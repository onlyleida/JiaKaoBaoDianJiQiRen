using System;
using System.CodeDom;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;

namespace Microsoft.VisualBasic;

internal sealed class VBCodeGenerator : CodeCompiler
{
	private static readonly char[] s_periodArray = new char[1] { '.' };

	private const int MaxLineLength = 80;

	private const GeneratorSupport LanguageSupport = GeneratorSupport.ArraysOfArrays | GeneratorSupport.EntryPointMethod | GeneratorSupport.GotoStatements | GeneratorSupport.MultidimensionalArrays | GeneratorSupport.StaticConstructors | GeneratorSupport.TryCatchStatements | GeneratorSupport.ReturnTypeAttributes | GeneratorSupport.DeclareValueTypes | GeneratorSupport.DeclareEnums | GeneratorSupport.DeclareDelegates | GeneratorSupport.DeclareInterfaces | GeneratorSupport.DeclareEvents | GeneratorSupport.AssemblyAttributes | GeneratorSupport.ParameterAttributes | GeneratorSupport.ReferenceParameters | GeneratorSupport.ChainedConstructorArguments | GeneratorSupport.NestedTypes | GeneratorSupport.MultipleInterfaceMembers | GeneratorSupport.PublicStaticMembers | GeneratorSupport.ComplexExpressions | GeneratorSupport.Win32Resources | GeneratorSupport.Resources | GeneratorSupport.PartialTypes | GeneratorSupport.GenericTypeReference | GeneratorSupport.GenericTypeDeclaration | GeneratorSupport.DeclareIndexerProperties;

	private int _statementDepth;

	private IDictionary<string, string> _provOptions;

	private static readonly string[][] s_keywords = new string[16][]
	{
		null,
		new string[10] { "as", "do", "if", "in", "is", "me", "of", "on", "or", "to" },
		new string[15]
		{
			"and", "dim", "end", "for", "get", "let", "lib", "mod", "new", "not",
			"rem", "set", "sub", "try", "xor"
		},
		new string[30]
		{
			"ansi", "auto", "byte", "call", "case", "cdbl", "cdec", "char", "cint", "clng",
			"cobj", "csng", "cstr", "date", "each", "else", "enum", "exit", "goto", "like",
			"long", "loop", "next", "step", "stop", "then", "true", "wend", "when", "with"
		},
		new string[28]
		{
			"alias", "byref", "byval", "catch", "cbool", "cbyte", "cchar", "cdate", "class", "const",
			"ctype", "cuint", "culng", "endif", "erase", "error", "event", "false", "gosub", "isnot",
			"redim", "sbyte", "short", "throw", "ulong", "until", "using", "while"
		},
		new string[21]
		{
			"csbyte", "cshort", "double", "elseif", "friend", "global", "module", "mybase", "object", "option",
			"orelse", "public", "resume", "return", "select", "shared", "single", "static", "string", "typeof",
			"ushort"
		},
		new string[19]
		{
			"andalso", "boolean", "cushort", "decimal", "declare", "default", "finally", "gettype", "handles", "imports",
			"integer", "myclass", "nothing", "partial", "private", "shadows", "trycast", "unicode", "variant"
		},
		new string[13]
		{
			"assembly", "continue", "delegate", "function", "inherits", "operator", "optional", "preserve", "property", "readonly",
			"synclock", "uinteger", "widening"
		},
		new string[9] { "addressof", "interface", "namespace", "narrowing", "overloads", "overrides", "protected", "structure", "writeonly" },
		new string[6] { "addhandler", "directcast", "implements", "paramarray", "raiseevent", "withevents" },
		new string[2] { "mustinherit", "overridable" },
		new string[1] { "mustoverride" },
		new string[1] { "removehandler" },
		new string[3] { "class_finalize", "notinheritable", "notoverridable" },
		null,
		new string[1] { "class_initialize" }
	};

	protected override string FileExtension => ".vb";

	protected override string CompilerName => "vbc.exe";

	private bool IsCurrentModule
	{
		get
		{
			if (IsCurrentClass)
			{
				return GetUserData(CurrentClass, "Module", defaultValue: false);
			}
			return false;
		}
	}

	protected override string NullToken => "Nothing";

	internal VBCodeGenerator()
	{
	}

	internal VBCodeGenerator(IDictionary<string, string> providerOptions)
	{
		_provOptions = providerOptions;
	}

	private void EnsureInDoubleQuotes(ref bool fInDoubleQuotes, StringBuilder b)
	{
		if (!fInDoubleQuotes)
		{
			b.Append("&\"");
			fInDoubleQuotes = true;
		}
	}

	private void EnsureNotInDoubleQuotes(ref bool fInDoubleQuotes, StringBuilder b)
	{
		if (fInDoubleQuotes)
		{
			b.Append('"');
			fInDoubleQuotes = false;
		}
	}

	protected override string QuoteSnippetString(string value)
	{
		StringBuilder stringBuilder = new StringBuilder(value.Length + 5);
		bool fInDoubleQuotes = true;
		Indentation indentation = new Indentation((ExposedTabStringIndentedTextWriter)Output, Indent + 1);
		stringBuilder.Append('"');
		for (int i = 0; i < value.Length; i++)
		{
			char c = value[i];
			switch (c)
			{
			case '"':
			case '“':
			case '”':
			case '＂':
				EnsureInDoubleQuotes(ref fInDoubleQuotes, stringBuilder);
				stringBuilder.Append(c);
				stringBuilder.Append(c);
				break;
			case '\r':
				EnsureNotInDoubleQuotes(ref fInDoubleQuotes, stringBuilder);
				if (i < value.Length - 1 && value[i + 1] == '\n')
				{
					stringBuilder.Append("&Global.Microsoft.VisualBasic.ChrW(13)&Global.Microsoft.VisualBasic.ChrW(10)");
					i++;
				}
				else
				{
					stringBuilder.Append("&Global.Microsoft.VisualBasic.ChrW(13)");
				}
				break;
			case '\t':
				EnsureNotInDoubleQuotes(ref fInDoubleQuotes, stringBuilder);
				stringBuilder.Append("&Global.Microsoft.VisualBasic.ChrW(9)");
				break;
			case '\0':
				EnsureNotInDoubleQuotes(ref fInDoubleQuotes, stringBuilder);
				stringBuilder.Append("&Global.Microsoft.VisualBasic.ChrW(0)");
				break;
			case '\n':
				EnsureNotInDoubleQuotes(ref fInDoubleQuotes, stringBuilder);
				stringBuilder.Append("&Global.Microsoft.VisualBasic.ChrW(10)");
				break;
			case '\u2028':
			case '\u2029':
				EnsureNotInDoubleQuotes(ref fInDoubleQuotes, stringBuilder);
				AppendEscapedChar(stringBuilder, c);
				break;
			default:
				EnsureInDoubleQuotes(ref fInDoubleQuotes, stringBuilder);
				stringBuilder.Append(value[i]);
				break;
			}
			if (i > 0 && i % 80 == 0)
			{
				if (char.IsHighSurrogate(value[i]) && i < value.Length - 1 && char.IsLowSurrogate(value[i + 1]))
				{
					stringBuilder.Append(value[++i]);
				}
				if (fInDoubleQuotes)
				{
					stringBuilder.Append('"');
				}
				fInDoubleQuotes = true;
				stringBuilder.Append("& _ ");
				stringBuilder.Append(Environment.NewLine);
				stringBuilder.Append(indentation.IndentationString);
				stringBuilder.Append('"');
			}
		}
		if (fInDoubleQuotes)
		{
			stringBuilder.Append('"');
		}
		return stringBuilder.ToString();
	}

	private static void AppendEscapedChar(StringBuilder b, char value)
	{
		b.Append("&Global.Microsoft.VisualBasic.ChrW(");
		int num = value;
		b.Append(num.ToString(CultureInfo.InvariantCulture));
		b.Append(")");
	}

	protected override void ProcessCompilerOutputLine(CompilerResults results, string line)
	{
		throw new PlatformNotSupportedException();
	}

	protected override string CmdArgsFromParameters(CompilerParameters options)
	{
		throw new PlatformNotSupportedException();
	}

	protected override void OutputAttributeArgument(CodeAttributeArgument arg)
	{
		if (!string.IsNullOrEmpty(arg.Name))
		{
			OutputIdentifier(arg.Name);
			Output.Write(":=");
		}
		((ICodeGenerator)this).GenerateCodeFromExpression(arg.Value, ((ExposedTabStringIndentedTextWriter)Output).InnerWriter, Options);
	}

	private void OutputAttributes(CodeAttributeDeclarationCollection attributes, bool inLine)
	{
		OutputAttributes(attributes, inLine, null, closingLine: false);
	}

	private void OutputAttributes(CodeAttributeDeclarationCollection attributes, bool inLine, string prefix, bool closingLine)
	{
		if (attributes.Count == 0)
		{
			return;
		}
		bool flag = true;
		GenerateAttributeDeclarationsStart(attributes);
		foreach (CodeAttributeDeclaration attribute in attributes)
		{
			if (flag)
			{
				flag = false;
			}
			else
			{
				Output.Write(", ");
				if (!inLine)
				{
					ContinueOnNewLine("");
					Output.Write(' ');
				}
			}
			if (!string.IsNullOrEmpty(prefix))
			{
				Output.Write(prefix);
			}
			if (attribute.AttributeType != null)
			{
				Output.Write(GetTypeOutput(attribute.AttributeType));
			}
			Output.Write('(');
			bool flag2 = true;
			foreach (CodeAttributeArgument argument in attribute.Arguments)
			{
				if (flag2)
				{
					flag2 = false;
				}
				else
				{
					Output.Write(", ");
				}
				OutputAttributeArgument(argument);
			}
			Output.Write(')');
		}
		GenerateAttributeDeclarationsEnd(attributes);
		Output.Write(' ');
		if (!inLine)
		{
			if (closingLine)
			{
				Output.WriteLine();
			}
			else
			{
				ContinueOnNewLine("");
			}
		}
	}

	protected override void OutputDirection(FieldDirection dir)
	{
		switch (dir)
		{
		case FieldDirection.In:
			Output.Write("ByVal ");
			break;
		case FieldDirection.Out:
		case FieldDirection.Ref:
			Output.Write("ByRef ");
			break;
		}
	}

	protected override void GenerateDefaultValueExpression(CodeDefaultValueExpression e)
	{
		Output.Write("CType(Nothing, " + GetTypeOutput(e.Type) + ")");
	}

	protected override void GenerateDirectionExpression(CodeDirectionExpression e)
	{
		GenerateExpression(e.Expression);
	}

	protected override void OutputFieldScopeModifier(MemberAttributes attributes)
	{
		switch (attributes & MemberAttributes.ScopeMask)
		{
		case MemberAttributes.Final:
			Output.Write("");
			break;
		case MemberAttributes.Static:
			if (!IsCurrentModule)
			{
				Output.Write("Shared ");
			}
			break;
		case MemberAttributes.Const:
			Output.Write("Const ");
			break;
		default:
			Output.Write("");
			break;
		}
	}

	protected override void OutputMemberAccessModifier(MemberAttributes attributes)
	{
		switch (attributes & MemberAttributes.AccessMask)
		{
		case MemberAttributes.Assembly:
			Output.Write("Friend ");
			break;
		case MemberAttributes.FamilyAndAssembly:
			Output.Write("Friend ");
			break;
		case MemberAttributes.Family:
			Output.Write("Protected ");
			break;
		case MemberAttributes.FamilyOrAssembly:
			Output.Write("Protected Friend ");
			break;
		case MemberAttributes.Private:
			Output.Write("Private ");
			break;
		case MemberAttributes.Public:
			Output.Write("Public ");
			break;
		}
	}

	private void OutputVTableModifier(MemberAttributes attributes)
	{
		MemberAttributes memberAttributes = attributes & MemberAttributes.VTableMask;
		if (memberAttributes == MemberAttributes.New)
		{
			Output.Write("Shadows ");
		}
	}

	protected override void OutputMemberScopeModifier(MemberAttributes attributes)
	{
		switch (attributes & MemberAttributes.ScopeMask)
		{
		case MemberAttributes.Abstract:
			Output.Write("MustOverride ");
			return;
		case MemberAttributes.Final:
			Output.Write("");
			return;
		case MemberAttributes.Static:
			if (!IsCurrentModule)
			{
				Output.Write("Shared ");
			}
			return;
		case MemberAttributes.Override:
			Output.Write("Overrides ");
			return;
		case MemberAttributes.Private:
			Output.Write("Private ");
			return;
		}
		MemberAttributes memberAttributes = attributes & MemberAttributes.AccessMask;
		if (memberAttributes == MemberAttributes.Assembly || memberAttributes == MemberAttributes.Family || memberAttributes == MemberAttributes.Public)
		{
			Output.Write("Overridable ");
		}
	}

	protected override void OutputOperator(CodeBinaryOperatorType op)
	{
		switch (op)
		{
		case CodeBinaryOperatorType.IdentityInequality:
			Output.Write("<>");
			break;
		case CodeBinaryOperatorType.IdentityEquality:
			Output.Write("Is");
			break;
		case CodeBinaryOperatorType.BooleanOr:
			Output.Write("OrElse");
			break;
		case CodeBinaryOperatorType.BooleanAnd:
			Output.Write("AndAlso");
			break;
		case CodeBinaryOperatorType.ValueEquality:
			Output.Write('=');
			break;
		case CodeBinaryOperatorType.Modulus:
			Output.Write("Mod");
			break;
		case CodeBinaryOperatorType.BitwiseOr:
			Output.Write("Or");
			break;
		case CodeBinaryOperatorType.BitwiseAnd:
			Output.Write("And");
			break;
		default:
			base.OutputOperator(op);
			break;
		}
	}

	private void GenerateNotIsNullExpression(CodeExpression e)
	{
		Output.Write("(Not (");
		GenerateExpression(e);
		Output.Write(") Is ");
		Output.Write(NullToken);
		Output.Write(')');
	}

	protected override void GenerateBinaryOperatorExpression(CodeBinaryOperatorExpression e)
	{
		if (e.Operator != CodeBinaryOperatorType.IdentityInequality)
		{
			base.GenerateBinaryOperatorExpression(e);
		}
		else if (e.Right is CodePrimitiveExpression && ((CodePrimitiveExpression)e.Right).Value == null)
		{
			GenerateNotIsNullExpression(e.Left);
		}
		else if (e.Left is CodePrimitiveExpression && ((CodePrimitiveExpression)e.Left).Value == null)
		{
			GenerateNotIsNullExpression(e.Right);
		}
		else
		{
			base.GenerateBinaryOperatorExpression(e);
		}
	}

	protected override string GetResponseFileCmdArgs(CompilerParameters options, string cmdArgs)
	{
		return "/noconfig " + base.GetResponseFileCmdArgs(options, cmdArgs);
	}

	protected override void OutputIdentifier(string ident)
	{
		Output.Write(CreateEscapedIdentifier(ident));
	}

	protected override void OutputType(CodeTypeReference typeRef)
	{
		Output.Write(GetTypeOutputWithoutArrayPostFix(typeRef));
	}

	private void OutputTypeAttributes(CodeTypeDeclaration e)
	{
		if ((e.Attributes & MemberAttributes.New) != 0)
		{
			Output.Write("Shadows ");
		}
		TypeAttributes typeAttributes = e.TypeAttributes;
		if (e.IsPartial)
		{
			Output.Write("Partial ");
		}
		switch (typeAttributes & TypeAttributes.VisibilityMask)
		{
		case TypeAttributes.Public:
		case TypeAttributes.NestedPublic:
			Output.Write("Public ");
			break;
		case TypeAttributes.NestedPrivate:
			Output.Write("Private ");
			break;
		case TypeAttributes.NestedFamily:
			Output.Write("Protected ");
			break;
		case TypeAttributes.NotPublic:
		case TypeAttributes.NestedAssembly:
		case TypeAttributes.NestedFamANDAssem:
			Output.Write("Friend ");
			break;
		case TypeAttributes.VisibilityMask:
			Output.Write("Protected Friend ");
			break;
		}
		if (e.IsStruct)
		{
			Output.Write("Structure ");
			return;
		}
		if (e.IsEnum)
		{
			Output.Write("Enum ");
			return;
		}
		switch (typeAttributes & TypeAttributes.ClassSemanticsMask)
		{
		case TypeAttributes.NotPublic:
			if (IsCurrentModule)
			{
				Output.Write("Module ");
				break;
			}
			if ((typeAttributes & TypeAttributes.Sealed) == TypeAttributes.Sealed)
			{
				Output.Write("NotInheritable ");
			}
			if ((typeAttributes & TypeAttributes.Abstract) == TypeAttributes.Abstract)
			{
				Output.Write("MustInherit ");
			}
			Output.Write("Class ");
			break;
		case TypeAttributes.ClassSemanticsMask:
			Output.Write("Interface ");
			break;
		}
	}

	protected override void OutputTypeNamePair(CodeTypeReference typeRef, string name)
	{
		if (string.IsNullOrEmpty(name))
		{
			name = "__exception";
		}
		OutputIdentifier(name);
		OutputArrayPostfix(typeRef);
		Output.Write(" As ");
		OutputType(typeRef);
	}

	private string GetArrayPostfix(CodeTypeReference typeRef)
	{
		string text = "";
		if (typeRef.ArrayElementType != null)
		{
			text = GetArrayPostfix(typeRef.ArrayElementType);
		}
		if (typeRef.ArrayRank > 0)
		{
			char[] array = new char[typeRef.ArrayRank + 1];
			array[0] = '(';
			array[typeRef.ArrayRank] = ')';
			for (int i = 1; i < typeRef.ArrayRank; i++)
			{
				array[i] = ',';
			}
			text = new string(array) + text;
		}
		return text;
	}

	private void OutputArrayPostfix(CodeTypeReference typeRef)
	{
		if (typeRef.ArrayRank > 0)
		{
			Output.Write(GetArrayPostfix(typeRef));
		}
	}

	protected override void GenerateIterationStatement(CodeIterationStatement e)
	{
		GenerateStatement(e.InitStatement);
		Output.Write("Do While ");
		GenerateExpression(e.TestExpression);
		Output.WriteLine();
		Indent++;
		GenerateVBStatements(e.Statements);
		GenerateStatement(e.IncrementStatement);
		Indent--;
		Output.WriteLine("Loop");
	}

	protected override void GeneratePrimitiveExpression(CodePrimitiveExpression e)
	{
		if (e.Value is char)
		{
			Output.Write("Global.Microsoft.VisualBasic.ChrW(" + ((IConvertible)e.Value).ToInt32(CultureInfo.InvariantCulture).ToString(CultureInfo.InvariantCulture) + ")");
		}
		else if (e.Value is sbyte)
		{
			Output.Write("CSByte(");
			Output.Write(((sbyte)e.Value).ToString(CultureInfo.InvariantCulture));
			Output.Write(')');
		}
		else if (e.Value is ushort)
		{
			Output.Write(((ushort)e.Value).ToString(CultureInfo.InvariantCulture));
			Output.Write("US");
		}
		else if (e.Value is uint)
		{
			Output.Write(((uint)e.Value).ToString(CultureInfo.InvariantCulture));
			Output.Write("UI");
		}
		else if (e.Value is ulong)
		{
			Output.Write(((ulong)e.Value).ToString(CultureInfo.InvariantCulture));
			Output.Write("UL");
		}
		else
		{
			base.GeneratePrimitiveExpression(e);
		}
	}

	protected override void GenerateThrowExceptionStatement(CodeThrowExceptionStatement e)
	{
		Output.Write("Throw");
		if (e.ToThrow != null)
		{
			Output.Write(' ');
			GenerateExpression(e.ToThrow);
		}
		Output.WriteLine();
	}

	protected override void GenerateArrayCreateExpression(CodeArrayCreateExpression e)
	{
		Output.Write("New ");
		CodeExpressionCollection initializers = e.Initializers;
		if (initializers.Count > 0)
		{
			string typeOutput = GetTypeOutput(e.CreateType);
			Output.Write(typeOutput);
			if (typeOutput.IndexOf('(') == -1)
			{
				Output.Write("()");
			}
			Output.Write(" {");
			Indent++;
			OutputExpressionList(initializers);
			Indent--;
			Output.Write('}');
			return;
		}
		string typeOutput2 = GetTypeOutput(e.CreateType);
		int num = typeOutput2.IndexOf('(');
		if (num == -1)
		{
			Output.Write(typeOutput2);
			Output.Write('(');
		}
		else
		{
			Output.Write(typeOutput2.Substring(0, num + 1));
		}
		if (e.SizeExpression != null)
		{
			Output.Write('(');
			GenerateExpression(e.SizeExpression);
			Output.Write(") - 1");
		}
		else
		{
			Output.Write(e.Size - 1);
		}
		if (num == -1)
		{
			Output.Write(')');
		}
		else
		{
			Output.Write(typeOutput2.Substring(num + 1));
		}
		Output.Write(" {}");
	}

	protected override void GenerateBaseReferenceExpression(CodeBaseReferenceExpression e)
	{
		Output.Write("MyBase");
	}

	protected override void GenerateCastExpression(CodeCastExpression e)
	{
		Output.Write("CType(");
		GenerateExpression(e.Expression);
		Output.Write(',');
		OutputType(e.TargetType);
		OutputArrayPostfix(e.TargetType);
		Output.Write(')');
	}

	protected override void GenerateDelegateCreateExpression(CodeDelegateCreateExpression e)
	{
		Output.Write("AddressOf ");
		GenerateExpression(e.TargetObject);
		Output.Write('.');
		OutputIdentifier(e.MethodName);
	}

	protected override void GenerateFieldReferenceExpression(CodeFieldReferenceExpression e)
	{
		if (e.TargetObject != null)
		{
			GenerateExpression(e.TargetObject);
			Output.Write('.');
		}
		OutputIdentifier(e.FieldName);
	}

	protected override void GenerateSingleFloatValue(float s)
	{
		if (float.IsNaN(s))
		{
			Output.Write("Single.NaN");
			return;
		}
		if (float.IsNegativeInfinity(s))
		{
			Output.Write("Single.NegativeInfinity");
			return;
		}
		if (float.IsPositiveInfinity(s))
		{
			Output.Write("Single.PositiveInfinity");
			return;
		}
		Output.Write(s.ToString(CultureInfo.InvariantCulture));
		Output.Write('!');
	}

	protected override void GenerateDoubleValue(double d)
	{
		if (double.IsNaN(d))
		{
			Output.Write("Double.NaN");
			return;
		}
		if (double.IsNegativeInfinity(d))
		{
			Output.Write("Double.NegativeInfinity");
			return;
		}
		if (double.IsPositiveInfinity(d))
		{
			Output.Write("Double.PositiveInfinity");
			return;
		}
		Output.Write(d.ToString("R", CultureInfo.InvariantCulture));
		Output.Write('R');
	}

	protected override void GenerateDecimalValue(decimal d)
	{
		Output.Write(d.ToString(CultureInfo.InvariantCulture));
		Output.Write('D');
	}

	protected override void GenerateArgumentReferenceExpression(CodeArgumentReferenceExpression e)
	{
		OutputIdentifier(e.ParameterName);
	}

	protected override void GenerateVariableReferenceExpression(CodeVariableReferenceExpression e)
	{
		OutputIdentifier(e.VariableName);
	}

	protected override void GenerateIndexerExpression(CodeIndexerExpression e)
	{
		GenerateExpression(e.TargetObject);
		if (e.TargetObject is CodeBaseReferenceExpression)
		{
			Output.Write(".Item");
		}
		Output.Write('(');
		bool flag = true;
		foreach (CodeExpression index in e.Indices)
		{
			if (flag)
			{
				flag = false;
			}
			else
			{
				Output.Write(", ");
			}
			GenerateExpression(index);
		}
		Output.Write(')');
	}

	protected override void GenerateArrayIndexerExpression(CodeArrayIndexerExpression e)
	{
		GenerateExpression(e.TargetObject);
		Output.Write('(');
		bool flag = true;
		foreach (CodeExpression index in e.Indices)
		{
			if (flag)
			{
				flag = false;
			}
			else
			{
				Output.Write(", ");
			}
			GenerateExpression(index);
		}
		Output.Write(')');
	}

	protected override void GenerateSnippetExpression(CodeSnippetExpression e)
	{
		Output.Write(e.Value);
	}

	protected override void GenerateMethodInvokeExpression(CodeMethodInvokeExpression e)
	{
		GenerateMethodReferenceExpression(e.Method);
		if (e.Parameters.Count > 0)
		{
			Output.Write('(');
			OutputExpressionList(e.Parameters);
			Output.Write(')');
		}
	}

	protected override void GenerateMethodReferenceExpression(CodeMethodReferenceExpression e)
	{
		if (e.TargetObject != null)
		{
			GenerateExpression(e.TargetObject);
			Output.Write('.');
			Output.Write(e.MethodName);
		}
		else
		{
			OutputIdentifier(e.MethodName);
		}
		if (e.TypeArguments.Count > 0)
		{
			Output.Write(GetTypeArgumentsOutput(e.TypeArguments));
		}
	}

	protected override void GenerateEventReferenceExpression(CodeEventReferenceExpression e)
	{
		if (e.TargetObject != null)
		{
			bool flag = e.TargetObject is CodeThisReferenceExpression;
			GenerateExpression(e.TargetObject);
			Output.Write('.');
			if (flag)
			{
				Output.Write(e.EventName + "Event");
			}
			else
			{
				Output.Write(e.EventName);
			}
		}
		else
		{
			OutputIdentifier(e.EventName + "Event");
		}
	}

	private void GenerateFormalEventReferenceExpression(CodeEventReferenceExpression e)
	{
		if (e.TargetObject != null && !(e.TargetObject is CodeThisReferenceExpression))
		{
			GenerateExpression(e.TargetObject);
			Output.Write('.');
		}
		OutputIdentifier(e.EventName);
	}

	protected override void GenerateDelegateInvokeExpression(CodeDelegateInvokeExpression e)
	{
		if (e.TargetObject != null)
		{
			if (e.TargetObject is CodeEventReferenceExpression)
			{
				Output.Write("RaiseEvent ");
				GenerateFormalEventReferenceExpression((CodeEventReferenceExpression)e.TargetObject);
			}
			else
			{
				GenerateExpression(e.TargetObject);
			}
		}
		if (e.Parameters.Count > 0)
		{
			Output.Write('(');
			OutputExpressionList(e.Parameters);
			Output.Write(')');
		}
	}

	protected override void GenerateObjectCreateExpression(CodeObjectCreateExpression e)
	{
		Output.Write("New ");
		OutputType(e.CreateType);
		Output.Write('(');
		OutputExpressionList(e.Parameters);
		Output.Write(')');
	}

	protected override void GenerateParameterDeclarationExpression(CodeParameterDeclarationExpression e)
	{
		if (e.CustomAttributes.Count > 0)
		{
			OutputAttributes(e.CustomAttributes, inLine: true);
		}
		OutputDirection(e.Direction);
		OutputTypeNamePair(e.Type, e.Name);
	}

	protected override void GeneratePropertySetValueReferenceExpression(CodePropertySetValueReferenceExpression e)
	{
		Output.Write("value");
	}

	protected override void GenerateThisReferenceExpression(CodeThisReferenceExpression e)
	{
		Output.Write("Me");
	}

	protected override void GenerateExpressionStatement(CodeExpressionStatement e)
	{
		GenerateExpression(e.Expression);
		Output.WriteLine();
	}

	private bool IsDocComment(CodeCommentStatement comment)
	{
		if (comment != null && comment.Comment != null)
		{
			return comment.Comment.DocComment;
		}
		return false;
	}

	protected override void GenerateCommentStatements(CodeCommentStatementCollection e)
	{
		foreach (CodeCommentStatement item in e)
		{
			if (!IsDocComment(item))
			{
				GenerateCommentStatement(item);
			}
		}
		foreach (CodeCommentStatement item2 in e)
		{
			if (IsDocComment(item2))
			{
				GenerateCommentStatement(item2);
			}
		}
	}

	protected override void GenerateComment(CodeComment e)
	{
		string value = (e.DocComment ? "'''" : "'");
		Output.Write(value);
		string text = e.Text;
		for (int i = 0; i < text.Length; i++)
		{
			Output.Write(text[i]);
			if (text[i] == '\r')
			{
				if (i < text.Length - 1 && text[i + 1] == '\n')
				{
					Output.Write('\n');
					i++;
				}
				((ExposedTabStringIndentedTextWriter)Output).InternalOutputTabs();
				Output.Write(value);
			}
			else if (text[i] == '\n')
			{
				((ExposedTabStringIndentedTextWriter)Output).InternalOutputTabs();
				Output.Write(value);
			}
			else if (text[i] == '\u2028' || text[i] == '\u2029' || text[i] == '\u0085')
			{
				Output.Write(value);
			}
		}
		Output.WriteLine();
	}

	protected override void GenerateMethodReturnStatement(CodeMethodReturnStatement e)
	{
		if (e.Expression != null)
		{
			Output.Write("Return ");
			GenerateExpression(e.Expression);
			Output.WriteLine();
		}
		else
		{
			Output.WriteLine("Return");
		}
	}

	protected override void GenerateConditionStatement(CodeConditionStatement e)
	{
		Output.Write("If ");
		GenerateExpression(e.Condition);
		Output.WriteLine(" Then");
		Indent++;
		GenerateVBStatements(e.TrueStatements);
		Indent--;
		if (e.FalseStatements.Count > 0)
		{
			Output.Write("Else");
			Output.WriteLine();
			Indent++;
			GenerateVBStatements(e.FalseStatements);
			Indent--;
		}
		Output.WriteLine("End If");
	}

	protected override void GenerateTryCatchFinallyStatement(CodeTryCatchFinallyStatement e)
	{
		Output.WriteLine("Try ");
		Indent++;
		GenerateVBStatements(e.TryStatements);
		Indent--;
		foreach (CodeCatchClause catchClause in e.CatchClauses)
		{
			Output.Write("Catch ");
			OutputTypeNamePair(catchClause.CatchExceptionType, catchClause.LocalName);
			Output.WriteLine();
			Indent++;
			GenerateVBStatements(catchClause.Statements);
			Indent--;
		}
		CodeStatementCollection finallyStatements = e.FinallyStatements;
		if (finallyStatements.Count > 0)
		{
			Output.WriteLine("Finally");
			Indent++;
			GenerateVBStatements(finallyStatements);
			Indent--;
		}
		Output.WriteLine("End Try");
	}

	protected override void GenerateAssignStatement(CodeAssignStatement e)
	{
		GenerateExpression(e.Left);
		Output.Write(" = ");
		GenerateExpression(e.Right);
		Output.WriteLine();
	}

	protected override void GenerateAttachEventStatement(CodeAttachEventStatement e)
	{
		Output.Write("AddHandler ");
		GenerateFormalEventReferenceExpression(e.Event);
		Output.Write(", ");
		GenerateExpression(e.Listener);
		Output.WriteLine();
	}

	protected override void GenerateRemoveEventStatement(CodeRemoveEventStatement e)
	{
		Output.Write("RemoveHandler ");
		GenerateFormalEventReferenceExpression(e.Event);
		Output.Write(", ");
		GenerateExpression(e.Listener);
		Output.WriteLine();
	}

	protected override void GenerateSnippetStatement(CodeSnippetStatement e)
	{
		Output.WriteLine(e.Value);
	}

	protected override void GenerateGotoStatement(CodeGotoStatement e)
	{
		Output.Write("goto ");
		Output.WriteLine(e.Label);
	}

	protected override void GenerateLabeledStatement(CodeLabeledStatement e)
	{
		Indent--;
		Output.Write(e.Label);
		Output.WriteLine(':');
		Indent++;
		if (e.Statement != null)
		{
			GenerateStatement(e.Statement);
		}
	}

	protected override void GenerateVariableDeclarationStatement(CodeVariableDeclarationStatement e)
	{
		bool flag = true;
		Output.Write("Dim ");
		CodeTypeReference type = e.Type;
		if (type.ArrayRank == 1 && e.InitExpression != null)
		{
			if (e.InitExpression is CodeArrayCreateExpression codeArrayCreateExpression && codeArrayCreateExpression.Initializers.Count == 0)
			{
				flag = false;
				OutputIdentifier(e.Name);
				Output.Write('(');
				if (codeArrayCreateExpression.SizeExpression != null)
				{
					Output.Write('(');
					GenerateExpression(codeArrayCreateExpression.SizeExpression);
					Output.Write(") - 1");
				}
				else
				{
					Output.Write(codeArrayCreateExpression.Size - 1);
				}
				Output.Write(')');
				if (type.ArrayElementType != null)
				{
					OutputArrayPostfix(type.ArrayElementType);
				}
				Output.Write(" As ");
				OutputType(type);
			}
			else
			{
				OutputTypeNamePair(e.Type, e.Name);
			}
		}
		else
		{
			OutputTypeNamePair(e.Type, e.Name);
		}
		if (flag && e.InitExpression != null)
		{
			Output.Write(" = ");
			GenerateExpression(e.InitExpression);
		}
		Output.WriteLine();
	}

	protected override void GenerateLinePragmaStart(CodeLinePragma e)
	{
		Output.WriteLine();
		Output.Write("#ExternalSource(\"");
		Output.Write(e.FileName);
		Output.Write("\",");
		Output.Write(e.LineNumber);
		Output.WriteLine(')');
	}

	protected override void GenerateLinePragmaEnd(CodeLinePragma e)
	{
		Output.WriteLine();
		Output.WriteLine("#End ExternalSource");
	}

	protected override void GenerateEvent(CodeMemberEvent e, CodeTypeDeclaration c)
	{
		if (IsCurrentDelegate || IsCurrentEnum)
		{
			return;
		}
		if (e.CustomAttributes.Count > 0)
		{
			OutputAttributes(e.CustomAttributes, inLine: false);
		}
		string name = e.Name;
		if (e.PrivateImplementationType != null)
		{
			string baseTypeOutput = GetBaseTypeOutput(e.PrivateImplementationType, preferBuiltInTypes: false);
			baseTypeOutput = baseTypeOutput.Replace('.', '_');
			e.Name = baseTypeOutput + "_" + e.Name;
		}
		OutputMemberAccessModifier(e.Attributes);
		Output.Write("Event ");
		OutputTypeNamePair(e.Type, e.Name);
		if (e.ImplementationTypes.Count > 0)
		{
			Output.Write(" Implements ");
			bool flag = true;
			foreach (CodeTypeReference implementationType in e.ImplementationTypes)
			{
				if (flag)
				{
					flag = false;
				}
				else
				{
					Output.Write(" , ");
				}
				OutputType(implementationType);
				Output.Write('.');
				OutputIdentifier(name);
			}
		}
		else if (e.PrivateImplementationType != null)
		{
			Output.Write(" Implements ");
			OutputType(e.PrivateImplementationType);
			Output.Write('.');
			OutputIdentifier(name);
		}
		Output.WriteLine();
	}

	protected override void GenerateField(CodeMemberField e)
	{
		if (IsCurrentDelegate || IsCurrentInterface)
		{
			return;
		}
		if (IsCurrentEnum)
		{
			if (e.CustomAttributes.Count > 0)
			{
				OutputAttributes(e.CustomAttributes, inLine: false);
			}
			OutputIdentifier(e.Name);
			if (e.InitExpression != null)
			{
				Output.Write(" = ");
				GenerateExpression(e.InitExpression);
			}
			Output.WriteLine();
			return;
		}
		if (e.CustomAttributes.Count > 0)
		{
			OutputAttributes(e.CustomAttributes, inLine: false);
		}
		OutputMemberAccessModifier(e.Attributes);
		OutputVTableModifier(e.Attributes);
		OutputFieldScopeModifier(e.Attributes);
		if (GetUserData(e, "WithEvents", defaultValue: false))
		{
			Output.Write("WithEvents ");
		}
		OutputTypeNamePair(e.Type, e.Name);
		if (e.InitExpression != null)
		{
			Output.Write(" = ");
			GenerateExpression(e.InitExpression);
		}
		Output.WriteLine();
	}

	private bool MethodIsOverloaded(CodeMemberMethod e, CodeTypeDeclaration c)
	{
		if ((e.Attributes & MemberAttributes.Overloaded) != 0)
		{
			return true;
		}
		foreach (object member in c.Members)
		{
			if (member is CodeMemberMethod)
			{
				CodeMemberMethod codeMemberMethod = (CodeMemberMethod)member;
				if (!(member is CodeTypeConstructor) && !(member is CodeConstructor) && codeMemberMethod != e && codeMemberMethod.Name.Equals(e.Name, StringComparison.OrdinalIgnoreCase) && codeMemberMethod.PrivateImplementationType == null)
				{
					return true;
				}
			}
		}
		return false;
	}

	protected override void GenerateSnippetMember(CodeSnippetTypeMember e)
	{
		Output.Write(e.Text);
	}

	protected override void GenerateMethod(CodeMemberMethod e, CodeTypeDeclaration c)
	{
		if (!IsCurrentClass && !IsCurrentStruct && !IsCurrentInterface)
		{
			return;
		}
		if (e.CustomAttributes.Count > 0)
		{
			OutputAttributes(e.CustomAttributes, inLine: false);
		}
		string name = e.Name;
		if (e.PrivateImplementationType != null)
		{
			string baseTypeOutput = GetBaseTypeOutput(e.PrivateImplementationType, preferBuiltInTypes: false);
			baseTypeOutput = baseTypeOutput.Replace('.', '_');
			e.Name = baseTypeOutput + "_" + e.Name;
		}
		if (!IsCurrentInterface)
		{
			if (e.PrivateImplementationType == null)
			{
				OutputMemberAccessModifier(e.Attributes);
				if (MethodIsOverloaded(e, c))
				{
					Output.Write("Overloads ");
				}
			}
			OutputVTableModifier(e.Attributes);
			OutputMemberScopeModifier(e.Attributes);
		}
		else
		{
			OutputVTableModifier(e.Attributes);
		}
		bool flag = false;
		if (e.ReturnType.BaseType.Length == 0 || string.Equals(e.ReturnType.BaseType, typeof(void).FullName, StringComparison.OrdinalIgnoreCase))
		{
			flag = true;
		}
		if (flag)
		{
			Output.Write("Sub ");
		}
		else
		{
			Output.Write("Function ");
		}
		OutputIdentifier(e.Name);
		OutputTypeParameters(e.TypeParameters);
		Output.Write('(');
		OutputParameters(e.Parameters);
		Output.Write(')');
		if (!flag)
		{
			Output.Write(" As ");
			if (e.ReturnTypeCustomAttributes.Count > 0)
			{
				OutputAttributes(e.ReturnTypeCustomAttributes, inLine: true);
			}
			OutputType(e.ReturnType);
			OutputArrayPostfix(e.ReturnType);
		}
		if (e.ImplementationTypes.Count > 0)
		{
			Output.Write(" Implements ");
			bool flag2 = true;
			foreach (CodeTypeReference implementationType in e.ImplementationTypes)
			{
				if (flag2)
				{
					flag2 = false;
				}
				else
				{
					Output.Write(" , ");
				}
				OutputType(implementationType);
				Output.Write('.');
				OutputIdentifier(name);
			}
		}
		else if (e.PrivateImplementationType != null)
		{
			Output.Write(" Implements ");
			OutputType(e.PrivateImplementationType);
			Output.Write('.');
			OutputIdentifier(name);
		}
		Output.WriteLine();
		if (!IsCurrentInterface && (e.Attributes & MemberAttributes.ScopeMask) != MemberAttributes.Abstract)
		{
			Indent++;
			GenerateVBStatements(e.Statements);
			Indent--;
			if (flag)
			{
				Output.WriteLine("End Sub");
			}
			else
			{
				Output.WriteLine("End Function");
			}
		}
		e.Name = name;
	}

	protected override void GenerateEntryPointMethod(CodeEntryPointMethod e, CodeTypeDeclaration c)
	{
		if (e.CustomAttributes.Count > 0)
		{
			OutputAttributes(e.CustomAttributes, inLine: false);
		}
		Output.WriteLine("Public Shared Sub Main()");
		Indent++;
		GenerateVBStatements(e.Statements);
		Indent--;
		Output.WriteLine("End Sub");
	}

	private bool PropertyIsOverloaded(CodeMemberProperty e, CodeTypeDeclaration c)
	{
		if ((e.Attributes & MemberAttributes.Overloaded) != 0)
		{
			return true;
		}
		foreach (object member in c.Members)
		{
			if (member is CodeMemberProperty)
			{
				CodeMemberProperty codeMemberProperty = (CodeMemberProperty)member;
				if (codeMemberProperty != e && codeMemberProperty.Name.Equals(e.Name, StringComparison.OrdinalIgnoreCase) && codeMemberProperty.PrivateImplementationType == null)
				{
					return true;
				}
			}
		}
		return false;
	}

	protected override void GenerateProperty(CodeMemberProperty e, CodeTypeDeclaration c)
	{
		if (!IsCurrentClass && !IsCurrentStruct && !IsCurrentInterface)
		{
			return;
		}
		if (e.CustomAttributes.Count > 0)
		{
			OutputAttributes(e.CustomAttributes, inLine: false);
		}
		string name = e.Name;
		if (e.PrivateImplementationType != null)
		{
			string baseTypeOutput = GetBaseTypeOutput(e.PrivateImplementationType, preferBuiltInTypes: false);
			baseTypeOutput = baseTypeOutput.Replace('.', '_');
			e.Name = baseTypeOutput + "_" + e.Name;
		}
		if (!IsCurrentInterface)
		{
			if (e.PrivateImplementationType == null)
			{
				OutputMemberAccessModifier(e.Attributes);
				if (PropertyIsOverloaded(e, c))
				{
					Output.Write("Overloads ");
				}
			}
			OutputVTableModifier(e.Attributes);
			OutputMemberScopeModifier(e.Attributes);
		}
		else
		{
			OutputVTableModifier(e.Attributes);
		}
		if (e.Parameters.Count > 0 && string.Equals(e.Name, "Item", StringComparison.OrdinalIgnoreCase))
		{
			Output.Write("Default ");
		}
		if (e.HasGet)
		{
			if (!e.HasSet)
			{
				Output.Write("ReadOnly ");
			}
		}
		else if (e.HasSet)
		{
			Output.Write("WriteOnly ");
		}
		Output.Write("Property ");
		OutputIdentifier(e.Name);
		Output.Write('(');
		if (e.Parameters.Count > 0)
		{
			OutputParameters(e.Parameters);
		}
		Output.Write(')');
		Output.Write(" As ");
		OutputType(e.Type);
		OutputArrayPostfix(e.Type);
		if (e.ImplementationTypes.Count > 0)
		{
			Output.Write(" Implements ");
			bool flag = true;
			foreach (CodeTypeReference implementationType in e.ImplementationTypes)
			{
				if (flag)
				{
					flag = false;
				}
				else
				{
					Output.Write(" , ");
				}
				OutputType(implementationType);
				Output.Write('.');
				OutputIdentifier(name);
			}
		}
		else if (e.PrivateImplementationType != null)
		{
			Output.Write(" Implements ");
			OutputType(e.PrivateImplementationType);
			Output.Write('.');
			OutputIdentifier(name);
		}
		Output.WriteLine();
		if (!c.IsInterface && (e.Attributes & MemberAttributes.ScopeMask) != MemberAttributes.Abstract)
		{
			Indent++;
			if (e.HasGet)
			{
				Output.WriteLine("Get");
				if (!IsCurrentInterface)
				{
					Indent++;
					GenerateVBStatements(e.GetStatements);
					e.Name = name;
					Indent--;
					Output.WriteLine("End Get");
				}
			}
			if (e.HasSet)
			{
				Output.WriteLine("Set");
				if (!IsCurrentInterface)
				{
					Indent++;
					GenerateVBStatements(e.SetStatements);
					Indent--;
					Output.WriteLine("End Set");
				}
			}
			Indent--;
			Output.WriteLine("End Property");
		}
		e.Name = name;
	}

	protected override void GeneratePropertyReferenceExpression(CodePropertyReferenceExpression e)
	{
		if (e.TargetObject != null)
		{
			GenerateExpression(e.TargetObject);
			Output.Write('.');
			Output.Write(e.PropertyName);
		}
		else
		{
			OutputIdentifier(e.PropertyName);
		}
	}

	protected override void GenerateConstructor(CodeConstructor e, CodeTypeDeclaration c)
	{
		if (IsCurrentClass || IsCurrentStruct)
		{
			if (e.CustomAttributes.Count > 0)
			{
				OutputAttributes(e.CustomAttributes, inLine: false);
			}
			OutputMemberAccessModifier(e.Attributes);
			Output.Write("Sub New(");
			OutputParameters(e.Parameters);
			Output.WriteLine(')');
			Indent++;
			CodeExpressionCollection baseConstructorArgs = e.BaseConstructorArgs;
			CodeExpressionCollection chainedConstructorArgs = e.ChainedConstructorArgs;
			if (chainedConstructorArgs.Count > 0)
			{
				Output.Write("Me.New(");
				OutputExpressionList(chainedConstructorArgs);
				Output.Write(')');
				Output.WriteLine();
			}
			else if (baseConstructorArgs.Count > 0)
			{
				Output.Write("MyBase.New(");
				OutputExpressionList(baseConstructorArgs);
				Output.Write(')');
				Output.WriteLine();
			}
			else if (IsCurrentClass)
			{
				Output.WriteLine("MyBase.New");
			}
			GenerateVBStatements(e.Statements);
			Indent--;
			Output.WriteLine("End Sub");
		}
	}

	protected override void GenerateTypeConstructor(CodeTypeConstructor e)
	{
		if (IsCurrentClass || IsCurrentStruct)
		{
			if (e.CustomAttributes.Count > 0)
			{
				OutputAttributes(e.CustomAttributes, inLine: false);
			}
			Output.WriteLine("Shared Sub New()");
			Indent++;
			GenerateVBStatements(e.Statements);
			Indent--;
			Output.WriteLine("End Sub");
		}
	}

	protected override void GenerateTypeOfExpression(CodeTypeOfExpression e)
	{
		Output.Write("GetType(");
		Output.Write(GetTypeOutput(e.Type));
		Output.Write(')');
	}

	protected override void GenerateTypeStart(CodeTypeDeclaration e)
	{
		if (IsCurrentDelegate)
		{
			if (e.CustomAttributes.Count > 0)
			{
				OutputAttributes(e.CustomAttributes, inLine: false);
			}
			TypeAttributes typeAttributes = e.TypeAttributes & TypeAttributes.VisibilityMask;
			if (typeAttributes != TypeAttributes.NotPublic && typeAttributes == TypeAttributes.Public)
			{
				Output.Write("Public ");
			}
			CodeTypeDelegate codeTypeDelegate = (CodeTypeDelegate)e;
			if (codeTypeDelegate.ReturnType.BaseType.Length > 0 && !string.Equals(codeTypeDelegate.ReturnType.BaseType, "System.Void", StringComparison.OrdinalIgnoreCase))
			{
				Output.Write("Delegate Function ");
			}
			else
			{
				Output.Write("Delegate Sub ");
			}
			OutputIdentifier(e.Name);
			Output.Write('(');
			OutputParameters(codeTypeDelegate.Parameters);
			Output.Write(')');
			if (codeTypeDelegate.ReturnType.BaseType.Length > 0 && !string.Equals(codeTypeDelegate.ReturnType.BaseType, "System.Void", StringComparison.OrdinalIgnoreCase))
			{
				Output.Write(" As ");
				OutputType(codeTypeDelegate.ReturnType);
				OutputArrayPostfix(codeTypeDelegate.ReturnType);
			}
			Output.WriteLine();
			return;
		}
		if (e.IsEnum)
		{
			if (e.CustomAttributes.Count > 0)
			{
				OutputAttributes(e.CustomAttributes, inLine: false);
			}
			OutputTypeAttributes(e);
			OutputIdentifier(e.Name);
			if (e.BaseTypes.Count > 0)
			{
				Output.Write(" As ");
				OutputType(e.BaseTypes[0]);
			}
			Output.WriteLine();
			Indent++;
			return;
		}
		if (e.CustomAttributes.Count > 0)
		{
			OutputAttributes(e.CustomAttributes, inLine: false);
		}
		OutputTypeAttributes(e);
		OutputIdentifier(e.Name);
		OutputTypeParameters(e.TypeParameters);
		bool flag = false;
		bool flag2 = false;
		if (e.IsStruct)
		{
			flag = true;
		}
		if (e.IsInterface)
		{
			flag2 = true;
		}
		Indent++;
		foreach (CodeTypeReference baseType in e.BaseTypes)
		{
			if (!flag && (e.IsInterface || !baseType.IsInterface))
			{
				Output.WriteLine();
				Output.Write("Inherits ");
				flag = true;
			}
			else if (!flag2)
			{
				Output.WriteLine();
				Output.Write("Implements ");
				flag2 = true;
			}
			else
			{
				Output.Write(", ");
			}
			OutputType(baseType);
		}
		Output.WriteLine();
	}

	private void OutputTypeParameters(CodeTypeParameterCollection typeParameters)
	{
		if (typeParameters.Count == 0)
		{
			return;
		}
		Output.Write("(Of ");
		bool flag = true;
		for (int i = 0; i < typeParameters.Count; i++)
		{
			if (flag)
			{
				flag = false;
			}
			else
			{
				Output.Write(", ");
			}
			Output.Write(typeParameters[i].Name);
			OutputTypeParameterConstraints(typeParameters[i]);
		}
		Output.Write(')');
	}

	private void OutputTypeParameterConstraints(CodeTypeParameter typeParameter)
	{
		CodeTypeReferenceCollection constraints = typeParameter.Constraints;
		int num = constraints.Count;
		if (typeParameter.HasConstructorConstraint)
		{
			num++;
		}
		if (num == 0)
		{
			return;
		}
		Output.Write(" As ");
		if (num > 1)
		{
			Output.Write(" {");
		}
		bool flag = true;
		foreach (CodeTypeReference item in constraints)
		{
			if (flag)
			{
				flag = false;
			}
			else
			{
				Output.Write(", ");
			}
			Output.Write(GetTypeOutput(item));
		}
		if (typeParameter.HasConstructorConstraint)
		{
			if (!flag)
			{
				Output.Write(", ");
			}
			Output.Write("New");
		}
		if (num > 1)
		{
			Output.Write('}');
		}
	}

	protected override void GenerateTypeEnd(CodeTypeDeclaration e)
	{
		if (!IsCurrentDelegate)
		{
			Indent--;
			string value;
			if (e.IsEnum)
			{
				value = "End Enum";
			}
			else if (e.IsInterface)
			{
				value = "End Interface";
			}
			else if (e.IsStruct)
			{
				value = "End Structure";
			}
			else
			{
				value = ((!IsCurrentModule) ? "End Class" : "End Module");
			}
			Output.WriteLine(value);
		}
	}

	protected override void GenerateNamespace(CodeNamespace e)
	{
		if (GetUserData(e, "GenerateImports", defaultValue: true))
		{
			GenerateNamespaceImports(e);
		}
		Output.WriteLine();
		GenerateCommentStatements(e.Comments);
		GenerateNamespaceStart(e);
		GenerateTypes(e);
		GenerateNamespaceEnd(e);
	}

	private bool AllowLateBound(CodeCompileUnit e)
	{
		object obj = e.UserData["AllowLateBound"];
		if (obj != null && obj is bool)
		{
			return (bool)obj;
		}
		return true;
	}

	private bool RequireVariableDeclaration(CodeCompileUnit e)
	{
		object obj = e.UserData["RequireVariableDeclaration"];
		if (obj != null && obj is bool)
		{
			return (bool)obj;
		}
		return true;
	}

	private bool GetUserData(CodeObject e, string property, bool defaultValue)
	{
		object obj = e.UserData[property];
		if (obj != null && obj is bool)
		{
			return (bool)obj;
		}
		return defaultValue;
	}

	protected override void GenerateCompileUnitStart(CodeCompileUnit e)
	{
		base.GenerateCompileUnitStart(e);
		Output.WriteLine("'------------------------------------------------------------------------------");
		Output.Write("' <");
		Output.WriteLine("auto-generated>");
		Output.Write("'     ");
		Output.WriteLine("This code was generated by a tool.");
		Output.Write("'     ");
		Output.Write("Runtime Version:");
		Output.WriteLine(Environment.Version.ToString());
		Output.WriteLine("'");
		Output.Write("'     ");
		Output.WriteLine("Changes to this file may cause incorrect behavior and will be lost if");
		Output.Write("'     ");
		Output.WriteLine("the code is regenerated.");
		Output.Write("' </");
		Output.WriteLine("auto-generated>");
		Output.WriteLine("'------------------------------------------------------------------------------");
		Output.WriteLine();
		if (AllowLateBound(e))
		{
			Output.WriteLine("Option Strict Off");
		}
		else
		{
			Output.WriteLine("Option Strict On");
		}
		if (!RequireVariableDeclaration(e))
		{
			Output.WriteLine("Option Explicit Off");
		}
		else
		{
			Output.WriteLine("Option Explicit On");
		}
		Output.WriteLine();
	}

	protected override void GenerateCompileUnit(CodeCompileUnit e)
	{
		GenerateCompileUnitStart(e);
		SortedSet<string> sortedSet = new SortedSet<string>(StringComparer.OrdinalIgnoreCase);
		foreach (CodeNamespace @namespace in e.Namespaces)
		{
			@namespace.UserData["GenerateImports"] = false;
			foreach (CodeNamespaceImport import in @namespace.Imports)
			{
				sortedSet.Add(import.Namespace);
			}
		}
		foreach (string item in sortedSet)
		{
			Output.Write("Imports ");
			OutputIdentifier(item);
			Output.WriteLine();
		}
		if (e.AssemblyCustomAttributes.Count > 0)
		{
			OutputAttributes(e.AssemblyCustomAttributes, inLine: false, "Assembly: ", closingLine: true);
		}
		GenerateNamespaces(e);
		GenerateCompileUnitEnd(e);
	}

	protected override void GenerateDirectives(CodeDirectiveCollection directives)
	{
		for (int i = 0; i < directives.Count; i++)
		{
			CodeDirective codeDirective = directives[i];
			if (codeDirective is CodeChecksumPragma)
			{
				GenerateChecksumPragma((CodeChecksumPragma)codeDirective);
			}
			else if (codeDirective is CodeRegionDirective)
			{
				GenerateCodeRegionDirective((CodeRegionDirective)codeDirective);
			}
		}
	}

	private void GenerateChecksumPragma(CodeChecksumPragma checksumPragma)
	{
		Output.Write("#ExternalChecksum(\"");
		Output.Write(checksumPragma.FileName);
		Output.Write("\",\"");
		Output.Write(checksumPragma.ChecksumAlgorithmId.ToString("B", CultureInfo.InvariantCulture));
		Output.Write("\",\"");
		if (checksumPragma.ChecksumData != null)
		{
			byte[] checksumData = checksumPragma.ChecksumData;
			foreach (byte b in checksumData)
			{
				Output.Write(b.ToString("X2", CultureInfo.InvariantCulture));
			}
		}
		Output.WriteLine("\")");
	}

	private void GenerateCodeRegionDirective(CodeRegionDirective regionDirective)
	{
		if (!IsGeneratingStatements())
		{
			if (regionDirective.RegionMode == CodeRegionMode.Start)
			{
				Output.Write("#Region \"");
				Output.Write(regionDirective.RegionText);
				Output.WriteLine("\"");
			}
			else if (regionDirective.RegionMode == CodeRegionMode.End)
			{
				Output.WriteLine("#End Region");
			}
		}
	}

	protected override void GenerateNamespaceStart(CodeNamespace e)
	{
		if (!string.IsNullOrEmpty(e.Name))
		{
			Output.Write("Namespace ");
			string[] array = e.Name.Split(s_periodArray);
			OutputIdentifier(array[0]);
			for (int i = 1; i < array.Length; i++)
			{
				Output.Write('.');
				OutputIdentifier(array[i]);
			}
			Output.WriteLine();
			Indent++;
		}
	}

	protected override void GenerateNamespaceEnd(CodeNamespace e)
	{
		if (!string.IsNullOrEmpty(e.Name))
		{
			Indent--;
			Output.WriteLine("End Namespace");
		}
	}

	protected override void GenerateNamespaceImport(CodeNamespaceImport e)
	{
		Output.Write("Imports ");
		OutputIdentifier(e.Namespace);
		Output.WriteLine();
	}

	protected override void GenerateAttributeDeclarationsStart(CodeAttributeDeclarationCollection attributes)
	{
		Output.Write('<');
	}

	protected override void GenerateAttributeDeclarationsEnd(CodeAttributeDeclarationCollection attributes)
	{
		Output.Write('>');
	}

	public static bool IsKeyword(string value)
	{
		return FixedStringLookup.Contains(s_keywords, value, ignoreCase: true);
	}

	protected override bool Supports(GeneratorSupport support)
	{
		return (support & (GeneratorSupport.ArraysOfArrays | GeneratorSupport.EntryPointMethod | GeneratorSupport.GotoStatements | GeneratorSupport.MultidimensionalArrays | GeneratorSupport.StaticConstructors | GeneratorSupport.TryCatchStatements | GeneratorSupport.ReturnTypeAttributes | GeneratorSupport.DeclareValueTypes | GeneratorSupport.DeclareEnums | GeneratorSupport.DeclareDelegates | GeneratorSupport.DeclareInterfaces | GeneratorSupport.DeclareEvents | GeneratorSupport.AssemblyAttributes | GeneratorSupport.ParameterAttributes | GeneratorSupport.ReferenceParameters | GeneratorSupport.ChainedConstructorArguments | GeneratorSupport.NestedTypes | GeneratorSupport.MultipleInterfaceMembers | GeneratorSupport.PublicStaticMembers | GeneratorSupport.ComplexExpressions | GeneratorSupport.Win32Resources | GeneratorSupport.Resources | GeneratorSupport.PartialTypes | GeneratorSupport.GenericTypeReference | GeneratorSupport.GenericTypeDeclaration | GeneratorSupport.DeclareIndexerProperties)) == support;
	}

	protected override bool IsValidIdentifier(string value)
	{
		if (string.IsNullOrEmpty(value))
		{
			return false;
		}
		if (value.Length > 1023)
		{
			return false;
		}
		if (value[0] != '[' || value[value.Length - 1] != ']')
		{
			if (IsKeyword(value))
			{
				return false;
			}
		}
		else
		{
			value = value.Substring(1, value.Length - 2);
		}
		if (value.Length == 1 && value[0] == '_')
		{
			return false;
		}
		return CodeGenerator.IsValidLanguageIndependentIdentifier(value);
	}

	protected override string CreateValidIdentifier(string name)
	{
		if (IsKeyword(name))
		{
			return "_" + name;
		}
		return name;
	}

	protected override string CreateEscapedIdentifier(string name)
	{
		if (IsKeyword(name))
		{
			return "[" + name + "]";
		}
		return name;
	}

	private string GetBaseTypeOutput(CodeTypeReference typeRef, bool preferBuiltInTypes = true)
	{
		string baseType = typeRef.BaseType;
		if (preferBuiltInTypes)
		{
			if (baseType.Length == 0)
			{
				return "Void";
			}
			switch (baseType.ToLowerInvariant())
			{
			case "system.byte":
				return "Byte";
			case "system.sbyte":
				return "SByte";
			case "system.int16":
				return "Short";
			case "system.int32":
				return "Integer";
			case "system.int64":
				return "Long";
			case "system.uint16":
				return "UShort";
			case "system.uint32":
				return "UInteger";
			case "system.uint64":
				return "ULong";
			case "system.string":
				return "String";
			case "system.datetime":
				return "Date";
			case "system.decimal":
				return "Decimal";
			case "system.single":
				return "Single";
			case "system.double":
				return "Double";
			case "system.boolean":
				return "Boolean";
			case "system.char":
				return "Char";
			case "system.object":
				return "Object";
			}
		}
		StringBuilder stringBuilder = new StringBuilder(baseType.Length + 10);
		if ((typeRef.Options & CodeTypeReferenceOptions.GlobalReference) != 0)
		{
			stringBuilder.Append("Global.");
		}
		int num = 0;
		int num2 = 0;
		for (int i = 0; i < baseType.Length; i++)
		{
			switch (baseType[i])
			{
			case '+':
			case '.':
				stringBuilder.Append(CreateEscapedIdentifier(baseType.Substring(num, i - num)));
				stringBuilder.Append('.');
				i++;
				num = i;
				break;
			case '`':
			{
				stringBuilder.Append(CreateEscapedIdentifier(baseType.Substring(num, i - num)));
				i++;
				int num3 = 0;
				for (; i < baseType.Length && baseType[i] >= '0' && baseType[i] <= '9'; i++)
				{
					num3 = num3 * 10 + (baseType[i] - 48);
				}
				GetTypeArgumentsOutput(typeRef.TypeArguments, num2, num3, stringBuilder);
				num2 += num3;
				if (i < baseType.Length && (baseType[i] == '+' || baseType[i] == '.'))
				{
					stringBuilder.Append('.');
					i++;
				}
				num = i;
				break;
			}
			}
		}
		if (num < baseType.Length)
		{
			stringBuilder.Append(CreateEscapedIdentifier(baseType.Substring(num)));
		}
		return stringBuilder.ToString();
	}

	private string GetTypeOutputWithoutArrayPostFix(CodeTypeReference typeRef)
	{
		StringBuilder stringBuilder = new StringBuilder();
		while (typeRef.ArrayElementType != null)
		{
			typeRef = typeRef.ArrayElementType;
		}
		stringBuilder.Append(GetBaseTypeOutput(typeRef));
		return stringBuilder.ToString();
	}

	private string GetTypeArgumentsOutput(CodeTypeReferenceCollection typeArguments)
	{
		StringBuilder stringBuilder = new StringBuilder(128);
		GetTypeArgumentsOutput(typeArguments, 0, typeArguments.Count, stringBuilder);
		return stringBuilder.ToString();
	}

	private void GetTypeArgumentsOutput(CodeTypeReferenceCollection typeArguments, int start, int length, StringBuilder sb)
	{
		sb.Append("(Of ");
		bool flag = true;
		for (int i = start; i < start + length; i++)
		{
			if (flag)
			{
				flag = false;
			}
			else
			{
				sb.Append(", ");
			}
			if (i < typeArguments.Count)
			{
				sb.Append(GetTypeOutput(typeArguments[i]));
			}
		}
		sb.Append(')');
	}

	protected override string GetTypeOutput(CodeTypeReference typeRef)
	{
		string empty = string.Empty;
		empty += GetTypeOutputWithoutArrayPostFix(typeRef);
		if (typeRef.ArrayRank > 0)
		{
			empty += GetArrayPostfix(typeRef);
		}
		return empty;
	}

	protected override void ContinueOnNewLine(string st)
	{
		Output.Write(st);
		Output.WriteLine(" _");
	}

	private bool IsGeneratingStatements()
	{
		return _statementDepth > 0;
	}

	private void GenerateVBStatements(CodeStatementCollection stms)
	{
		_statementDepth++;
		try
		{
			GenerateStatements(stms);
		}
		finally
		{
			_statementDepth--;
		}
	}

	protected override CompilerResults FromFileBatch(CompilerParameters options, string[] fileNames)
	{
		if (options == null)
		{
			throw new ArgumentNullException("options");
		}
		if (fileNames == null)
		{
			throw new ArgumentNullException("fileNames");
		}
		CompilerResults compilerResults = new CompilerResults(options.TempFiles);
		Process process = new Process();
		string text = "";
		if (Path.DirectorySeparatorChar == '\\')
		{
			process.StartInfo.FileName = MonoToolsLocator.Mono;
			process.StartInfo.Arguments = MonoToolsLocator.VBCompiler + " " + BuildArgs(options, fileNames);
		}
		else
		{
			process.StartInfo.FileName = MonoToolsLocator.VBCompiler;
			process.StartInfo.Arguments = BuildArgs(options, fileNames);
		}
		process.StartInfo.CreateNoWindow = true;
		process.StartInfo.UseShellExecute = false;
		process.StartInfo.RedirectStandardOutput = true;
		try
		{
			process.Start();
		}
		catch (Exception ex)
		{
			if (ex is Win32Exception ex2)
			{
				throw new SystemException($"Error running {process.StartInfo.FileName}: {Win32Exception.GetErrorMessage(ex2.NativeErrorCode)}");
			}
			throw;
		}
		try
		{
			text = process.StandardOutput.ReadToEnd();
			process.WaitForExit();
		}
		finally
		{
			compilerResults.NativeCompilerReturnValue = process.ExitCode;
			process.Close();
		}
		bool flag = true;
		if (compilerResults.NativeCompilerReturnValue == 1)
		{
			flag = false;
			string[] array = text.Split(Environment.NewLine.ToCharArray());
			for (int i = 0; i < array.Length; i++)
			{
				CompilerError compilerError = CreateErrorFromString(array[i]);
				if (compilerError != null)
				{
					compilerResults.Errors.Add(compilerError);
				}
			}
		}
		if ((!flag && !compilerResults.Errors.HasErrors) || (compilerResults.NativeCompilerReturnValue != 0 && compilerResults.NativeCompilerReturnValue != 1))
		{
			flag = false;
			CompilerError value = new CompilerError(string.Empty, 0, 0, "VBNC_CRASH", text);
			compilerResults.Errors.Add(value);
		}
		if (flag)
		{
			if (options.GenerateInMemory)
			{
				using FileStream fileStream = File.OpenRead(options.OutputAssembly);
				byte[] array2 = new byte[fileStream.Length];
				fileStream.Read(array2, 0, array2.Length);
				compilerResults.CompiledAssembly = Assembly.Load(array2, null);
				fileStream.Close();
			}
			else
			{
				compilerResults.CompiledAssembly = Assembly.LoadFrom(options.OutputAssembly);
				compilerResults.PathToAssembly = options.OutputAssembly;
			}
		}
		else
		{
			compilerResults.CompiledAssembly = null;
		}
		return compilerResults;
	}

	private static string BuildArgs(CompilerParameters options, string[] fileNames)
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append("/quiet ");
		if (options.GenerateExecutable)
		{
			stringBuilder.Append("/target:exe ");
		}
		else
		{
			stringBuilder.Append("/target:library ");
		}
		if (options.TreatWarningsAsErrors)
		{
			stringBuilder.Append("/warnaserror ");
		}
		if (options.OutputAssembly == null || options.OutputAssembly.Length == 0)
		{
			string extension = (options.GenerateExecutable ? "exe" : "dll");
			options.OutputAssembly = GetTempFileNameWithExtension(options.TempFiles, extension, !options.GenerateInMemory);
		}
		stringBuilder.AppendFormat("/out:\"{0}\" ", options.OutputAssembly);
		bool flag = false;
		if (options.ReferencedAssemblies != null)
		{
			StringEnumerator enumerator = options.ReferencedAssemblies.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					if (string.Compare(current, "Microsoft.VisualBasic", ignoreCase: true, CultureInfo.InvariantCulture) == 0)
					{
						flag = true;
					}
					stringBuilder.AppendFormat("/r:\"{0}\" ", current);
				}
			}
			finally
			{
				if (enumerator is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
		}
		if (!flag)
		{
			stringBuilder.Append("/r:\"Microsoft.VisualBasic.dll\" ");
		}
		if (options.CompilerOptions != null)
		{
			stringBuilder.Append(options.CompilerOptions);
			stringBuilder.Append(" ");
		}
		foreach (string arg in fileNames)
		{
			stringBuilder.AppendFormat(" \"{0}\" ", arg);
		}
		return stringBuilder.ToString();
	}

	private static CompilerError CreateErrorFromString(string error_string)
	{
		CompilerError compilerError = new CompilerError();
		Match match = new Regex("^(\\s*(?<file>.*)?\\((?<line>\\d*)(,(?<column>\\d*))?\\)\\s+)?:\\s*(?<level>Error|Warning)?\\s*(?<number>.*):\\s(?<message>.*)", RegexOptions.ExplicitCapture | RegexOptions.Compiled).Match(error_string);
		if (!match.Success)
		{
			return null;
		}
		if (string.Empty != match.Result("${file}"))
		{
			compilerError.FileName = match.Result("${file}").Trim();
		}
		if (string.Empty != match.Result("${line}"))
		{
			compilerError.Line = int.Parse(match.Result("${line}"));
		}
		if (string.Empty != match.Result("${column}"))
		{
			compilerError.Column = int.Parse(match.Result("${column}"));
		}
		if (match.Result("${level}").Trim() == "Warning")
		{
			compilerError.IsWarning = true;
		}
		compilerError.ErrorNumber = match.Result("${number}");
		compilerError.ErrorText = match.Result("${message}");
		return compilerError;
	}

	private static string GetTempFileNameWithExtension(TempFileCollection temp_files, string extension, bool keepFile)
	{
		return temp_files.AddExtension(extension, keepFile);
	}
}
