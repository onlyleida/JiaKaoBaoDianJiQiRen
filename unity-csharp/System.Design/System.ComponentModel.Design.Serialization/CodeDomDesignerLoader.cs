using System.CodeDom;
using System.CodeDom.Compiler;
using System.Collections;

namespace System.ComponentModel.Design.Serialization;

public abstract class CodeDomDesignerLoader : BasicDesignerLoader, INameCreationService, IDesignerSerializationService
{
	private CodeDomSerializer _rootSerializer;

	protected abstract CodeDomProvider CodeDomProvider { get; }

	protected abstract ITypeResolutionService TypeResolutionService { get; }

	protected override void Initialize()
	{
		base.Initialize();
		LoaderHost.AddService(typeof(IDesignerSerializationService), this);
		LoaderHost.AddService(typeof(INameCreationService), this);
		LoaderHost.AddService(typeof(ComponentSerializationService), new CodeDomComponentSerializationService(LoaderHost));
		if (TypeResolutionService != null && LoaderHost.GetService(typeof(ITypeResolutionService)) == null)
		{
			LoaderHost.AddService(typeof(ITypeResolutionService), TypeResolutionService);
		}
		if (LoaderHost.GetService(typeof(IDesignerSerializationManager)) is IDesignerSerializationManager designerSerializationManager)
		{
			designerSerializationManager.AddSerializationProvider(CodeDomSerializationProvider.Instance);
		}
	}

	protected override bool IsReloadNeeded()
	{
		if (CodeDomProvider is ICodeDomDesignerReload)
		{
			return ((ICodeDomDesignerReload)CodeDomProvider).ShouldReloadDesigner(Parse());
		}
		return base.IsReloadNeeded();
	}

	protected override void PerformLoad(IDesignerSerializationManager manager)
	{
		if (manager == null)
		{
			throw new ArgumentNullException("manager");
		}
		CodeCompileUnit codeCompileUnit = Parse();
		if (codeCompileUnit == null)
		{
			throw new NotSupportedException("The language did not provide a code parser for this file");
		}
		string namespaceName = null;
		CodeTypeDeclaration firstCodeTypeDecl = GetFirstCodeTypeDecl(codeCompileUnit, out namespaceName);
		if (firstCodeTypeDecl == null)
		{
			throw new InvalidOperationException("Cannot find a declaration in a namespace to load.");
		}
		_rootSerializer = manager.GetSerializer(manager.GetType(firstCodeTypeDecl.BaseTypes[0].BaseType), typeof(RootCodeDomSerializer)) as CodeDomSerializer;
		if (_rootSerializer == null)
		{
			throw new InvalidOperationException("Serialization not supported for this class");
		}
		_rootSerializer.Deserialize(manager, firstCodeTypeDecl);
		SetBaseComponentClassName(namespaceName + "." + firstCodeTypeDecl.Name);
	}

	private CodeTypeDeclaration GetFirstCodeTypeDecl(CodeCompileUnit document, out string namespaceName)
	{
		namespaceName = null;
		foreach (CodeNamespace @namespace in document.Namespaces)
		{
			foreach (CodeTypeDeclaration type in @namespace.Types)
			{
				if (type.IsClass)
				{
					namespaceName = @namespace.Name;
					return type;
				}
			}
		}
		return null;
	}

	protected override void PerformFlush(IDesignerSerializationManager manager)
	{
		if (_rootSerializer != null)
		{
			CodeTypeDeclaration typeDecl = (CodeTypeDeclaration)_rootSerializer.Serialize(manager, LoaderHost.RootComponent);
			Write(MergeTypeDeclWithCompileUnit(typeDecl, Parse()));
		}
	}

	private CodeCompileUnit MergeTypeDeclWithCompileUnit(CodeTypeDeclaration typeDecl, CodeCompileUnit unit)
	{
		CodeNamespace codeNamespace = null;
		int num = -1;
		foreach (CodeNamespace @namespace in unit.Namespaces)
		{
			for (int i = 0; i < @namespace.Types.Count; i++)
			{
				if (@namespace.Types[i].IsClass)
				{
					num = i;
					codeNamespace = @namespace;
				}
			}
		}
		if (num != -1)
		{
			codeNamespace.Types.RemoveAt(num);
		}
		codeNamespace.Types.Add(typeDecl);
		return unit;
	}

	protected override void OnBeginLoad()
	{
		base.OnBeginLoad();
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentRename += OnComponentRename_EventHandler;
		}
	}

	protected override void OnBeginUnload()
	{
		base.OnBeginUnload();
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentRename -= OnComponentRename_EventHandler;
		}
	}

	protected override void OnEndLoad(bool successful, ICollection errors)
	{
		base.OnEndLoad(successful, errors);
	}

	private void OnComponentRename_EventHandler(object sender, ComponentRenameEventArgs args)
	{
		OnComponentRename(args.Component, args.OldName, args.NewName);
	}

	protected virtual void OnComponentRename(object component, string oldName, string newName)
	{
	}

	protected abstract CodeCompileUnit Parse();

	protected abstract void Write(CodeCompileUnit unit);

	public override void Dispose()
	{
		base.Dispose();
	}

	string INameCreationService.CreateName(IContainer container, Type dataType)
	{
		if (dataType == null)
		{
			throw new ArgumentNullException("dataType");
		}
		string name = dataType.Name;
		char c = char.ToLower(name[0]);
		name = name.Remove(0, 1);
		name = name.Insert(0, char.ToString(c));
		int num = 1;
		bool flag = false;
		while (!flag)
		{
			if (container != null && container.Components[name + num] != null)
			{
				num++;
				continue;
			}
			flag = true;
			name += num;
		}
		if (CodeDomProvider != null)
		{
			name = CodeDomProvider.CreateValidIdentifier(name);
		}
		return name;
	}

	bool INameCreationService.IsValidName(string name)
	{
		if (name == null)
		{
			throw new ArgumentNullException("name");
		}
		bool result = true;
		if (LoaderHost != null && LoaderHost.Container.Components[name] != null)
		{
			result = false;
		}
		else if (CodeDomProvider != null)
		{
			result = CodeDomProvider.IsValidIdentifier(name);
		}
		else
		{
			if (name.Trim().Length == 0)
			{
				result = false;
			}
			for (int i = 0; i < name.Length; i++)
			{
				if (!char.IsLetterOrDigit(name[i]))
				{
					result = false;
					break;
				}
			}
		}
		return result;
	}

	void INameCreationService.ValidateName(string name)
	{
		if (!((INameCreationService)this).IsValidName(name))
		{
			throw new ArgumentException("Invalid name '" + name + "'");
		}
	}

	ICollection IDesignerSerializationService.Deserialize(object serializationData)
	{
		if (serializationData == null)
		{
			throw new ArgumentNullException("serializationData");
		}
		ComponentSerializationService componentSerializationService = LoaderHost.GetService(typeof(ComponentSerializationService)) as ComponentSerializationService;
		SerializationStore store = serializationData as SerializationStore;
		if (componentSerializationService != null && serializationData != null)
		{
			return componentSerializationService.Deserialize(store, LoaderHost.Container);
		}
		return new object[0];
	}

	object IDesignerSerializationService.Serialize(ICollection objects)
	{
		if (objects == null)
		{
			throw new ArgumentNullException("objects");
		}
		if (LoaderHost.GetService(typeof(ComponentSerializationService)) is ComponentSerializationService componentSerializationService)
		{
			SerializationStore serializationStore = componentSerializationService.CreateStore();
			foreach (object @object in objects)
			{
				componentSerializationService.Serialize(serializationStore, @object);
			}
			serializationStore.Close();
			return serializationStore;
		}
		return null;
	}
}
