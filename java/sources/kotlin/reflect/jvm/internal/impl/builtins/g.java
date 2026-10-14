package kotlin.reflect.jvm.internal.impl.builtins;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.alibaba.fastjson.asm.Opcodes;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.f0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.q;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.u0;
import kotlin.reflect.jvm.internal.impl.types.y0;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.name.f f14790f = kotlin.reflect.jvm.internal.impl.name.f.n("<built-ins module>");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ModuleDescriptorImpl f14791a;
    private kotlin.reflect.jvm.internal.impl.storage.h<ModuleDescriptorImpl> b;
    private final kotlin.reflect.jvm.internal.impl.storage.h<e> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.descriptors.d> f14792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m f14793e;

    class a implements Function0<Collection<f0>> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<f0> invoke() {
            return Arrays.asList(g.this.r().j0(h.l), g.this.r().j0(h.n), g.this.r().j0(h.o), g.this.r().j0(h.m));
        }
    }

    class b implements Function0<e> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e invoke() {
            EnumMap enumMap = new EnumMap(PrimitiveType.class);
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                kotlin.reflect.jvm.internal.impl.types.f0 f0VarQ = g.this.q(primitiveType.getTypeName().b());
                kotlin.reflect.jvm.internal.impl.types.f0 f0VarQ2 = g.this.q(primitiveType.getArrayTypeName().b());
                enumMap.put(primitiveType, f0VarQ2);
                map.put(f0VarQ, f0VarQ2);
                map2.put(f0VarQ2, f0VarQ);
            }
            return new e(enumMap, map, map2, null);
        }
    }

    class c implements Function1<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.descriptors.d> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.d invoke(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarF = g.this.s().f(fVar, NoLookupLocation.FROM_BUILTINS);
            if (fVarF == null) {
                throw new AssertionError("Built-in class " + h.l.c(fVar) + " is not found");
            }
            if (fVarF instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarF;
            }
            throw new AssertionError("Must be a class descriptor " + fVar + ", but was " + fVarF);
        }
    }

    class d implements Function0<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ModuleDescriptorImpl f14797a;

        d(ModuleDescriptorImpl moduleDescriptorImpl) {
            this.f14797a = moduleDescriptorImpl;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void invoke() {
            if (g.this.f14791a == null) {
                g.this.f14791a = this.f14797a;
                return null;
            }
            throw new AssertionError("Built-ins module is already set: " + g.this.f14791a + " (attempting to reset to " + this.f14797a + ")");
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<PrimitiveType, kotlin.reflect.jvm.internal.impl.types.f0> f14798a;
        public final Map<a0, kotlin.reflect.jvm.internal.impl.types.f0> b;
        public final Map<kotlin.reflect.jvm.internal.impl.types.f0, kotlin.reflect.jvm.internal.impl.types.f0> c;

        /* synthetic */ e(Map map, Map map2, Map map3, a aVar) {
            this(map, map2, map3);
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "primitiveKotlinTypeToKotlinArrayType";
            } else if (i != 2) {
                objArr[0] = "primitiveTypeToArrayKotlinType";
            } else {
                objArr[0] = "kotlinArrayTypeToPrimitiveKotlinType";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$Primitives";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private e(Map<PrimitiveType, kotlin.reflect.jvm.internal.impl.types.f0> map, Map<a0, kotlin.reflect.jvm.internal.impl.types.f0> map2, Map<kotlin.reflect.jvm.internal.impl.types.f0, kotlin.reflect.jvm.internal.impl.types.f0> map3) {
            if (map == null) {
                a(0);
                throw null;
            }
            if (map2 == null) {
                a(1);
                throw null;
            }
            if (map3 == null) {
                a(2);
                throw null;
            }
            this.f14798a = map;
            this.b = map2;
            this.c = map3;
        }
    }

    protected g(m mVar) {
        if (mVar == null) {
            a(0);
            throw null;
        }
        this.f14793e = mVar;
        mVar.c(new a());
        this.c = mVar.c(new b());
        this.f14792d = mVar.i(new c());
    }

    private static a0 A(a0 a0Var, z zVar) {
        kotlin.reflect.jvm.internal.impl.name.b bVarH;
        kotlin.reflect.jvm.internal.impl.name.b bVarA;
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA;
        if (a0Var == null) {
            a(71);
            throw null;
        }
        if (zVar == null) {
            a(72);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().c();
        if (fVarC == null) {
            return null;
        }
        j jVar = j.f14812a;
        if (!jVar.b(fVarC.getName()) || (bVarH = DescriptorUtilsKt.h(fVarC)) == null || (bVarA = jVar.a(bVarH)) == null || (dVarA = FindClassInModuleKt.a(zVar, bVarA)) == null) {
            return null;
        }
        return dVarA.n();
    }

    public static boolean A0(a0 a0Var) {
        if (a0Var != null) {
            return k0(a0Var, h.a.f14807e);
        }
        a(142);
        throw null;
    }

    public static boolean B0(a0 a0Var) {
        if (a0Var != null) {
            return v0(a0Var) || y0(a0Var) || w0(a0Var) || x0(a0Var);
        }
        a(132);
        throw null;
    }

    public static PrimitiveType N(a0 a0Var) {
        if (a0Var == null) {
            a(92);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().c();
        if (fVarC == null) {
            return null;
        }
        return P(fVarC);
    }

    public static PrimitiveType P(k kVar) {
        if (kVar == null) {
            a(77);
            throw null;
        }
        if (h.a.g0.contains(kVar.getName())) {
            return h.a.i0.get(kotlin.reflect.jvm.internal.impl.resolve.c.m(kVar));
        }
        return null;
    }

    private kotlin.reflect.jvm.internal.impl.descriptors.d Q(PrimitiveType primitiveType) {
        if (primitiveType != null) {
            return p(primitiveType.getTypeName().b());
        }
        a(16);
        throw null;
    }

    public static PrimitiveType S(k kVar) {
        if (kVar == null) {
            a(76);
            throw null;
        }
        if (h.a.f0.contains(kVar.getName())) {
            return h.a.h0.get(kotlin.reflect.jvm.internal.impl.resolve.c.m(kVar));
        }
        return null;
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                i2 = 2;
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 72:
                objArr[0] = "module";
                break;
            case 2:
                objArr[0] = "computation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 9:
            case 10:
            case 76:
            case 77:
            case 89:
            case 96:
            case 103:
            case 107:
            case 108:
            case l.Receive_GEAR_DATA2 /* 145 */:
            case l.Receive_GEAR_DATA /* 146 */:
            case Opcodes.LCMP /* 148 */:
            case Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED /* 156 */:
            case 157:
            case Opcodes.IFLE /* 158 */:
            case Opcodes.IF_ICMPEQ /* 159 */:
                objArr[0] = "descriptor";
                break;
            case 12:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 135:
                objArr[0] = "fqName";
                break;
            case 14:
                objArr[0] = "simpleName";
                break;
            case 16:
            case 17:
            case 53:
            case 88:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 97:
            case 99:
            case 105:
            case 109:
            case 110:
            case 111:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case Imgproc.COLOR_RGB2YUV_YV12 /* 131 */:
            case 132:
            case 133:
            case 134:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case Imgproc.COLOR_COLORCVT_MAX /* 143 */:
            case 144:
            case 147:
            case Opcodes.FCMPL /* 149 */:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
            case 161:
                objArr[0] = "type";
                break;
            case 46:
                objArr[0] = "classSimpleName";
                break;
            case 67:
                objArr[0] = "arrayType";
                break;
            case 71:
                objArr[0] = "notNullArrayType";
                break;
            case 73:
                objArr[0] = "primitiveType";
                break;
            case 75:
                objArr[0] = "kotlinType";
                break;
            case 78:
            case 82:
                objArr[0] = "projectionType";
                break;
            case 79:
            case 83:
            case 85:
                objArr[0] = "argument";
                break;
            case 80:
                objArr[0] = "annotations";
                break;
            case 101:
                objArr[0] = "typeConstructor";
                break;
            case 112:
                objArr[0] = "classDescriptor";
                break;
            case 160:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 3:
                objArr[1] = "getAdditionalClassPartsProvider";
                break;
            case 4:
                objArr[1] = "getPlatformDependentDeclarationFilter";
                break;
            case 5:
                objArr[1] = "getClassDescriptorFactories";
                break;
            case 6:
                objArr[1] = "getStorageManager";
                break;
            case 7:
                objArr[1] = "getBuiltInsModule";
                break;
            case 8:
                objArr[1] = "getBuiltInPackagesImportedByDefault";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 11:
                objArr[1] = "getBuiltInsPackageScope";
                break;
            case 13:
                objArr[1] = "getBuiltInClassByFqName";
                break;
            case 15:
                objArr[1] = "getBuiltInClassByName";
                break;
            case 18:
                objArr[1] = "getSuspendFunction";
                break;
            case 19:
                objArr[1] = "getKFunction";
                break;
            case 20:
                objArr[1] = "getKSuspendFunction";
                break;
            case 21:
                objArr[1] = "getKClass";
                break;
            case 22:
                objArr[1] = "getKCallable";
                break;
            case 23:
                objArr[1] = "getKProperty";
                break;
            case 24:
                objArr[1] = "getKProperty0";
                break;
            case 25:
                objArr[1] = "getKProperty1";
                break;
            case 26:
                objArr[1] = "getKProperty2";
                break;
            case 27:
                objArr[1] = "getKMutableProperty0";
                break;
            case 28:
                objArr[1] = "getKMutableProperty1";
                break;
            case 29:
                objArr[1] = "getKMutableProperty2";
                break;
            case 30:
                objArr[1] = "getIterator";
                break;
            case 31:
                objArr[1] = "getIterable";
                break;
            case 32:
                objArr[1] = "getMutableIterable";
                break;
            case 33:
                objArr[1] = "getMutableIterator";
                break;
            case 34:
                objArr[1] = "getCollection";
                break;
            case 35:
                objArr[1] = "getMutableCollection";
                break;
            case 36:
                objArr[1] = "getList";
                break;
            case 37:
                objArr[1] = "getMutableList";
                break;
            case 38:
                objArr[1] = "getSet";
                break;
            case 39:
                objArr[1] = "getMutableSet";
                break;
            case 40:
                objArr[1] = "getMap";
                break;
            case 41:
                objArr[1] = "getMutableMap";
                break;
            case 42:
                objArr[1] = "getMapEntry";
                break;
            case 43:
                objArr[1] = "getMutableMapEntry";
                break;
            case 44:
                objArr[1] = "getListIterator";
                break;
            case 45:
                objArr[1] = "getMutableListIterator";
                break;
            case 47:
                objArr[1] = "getBuiltInTypeByClassName";
                break;
            case 48:
                objArr[1] = "getNothingType";
                break;
            case 49:
                objArr[1] = "getNullableNothingType";
                break;
            case 50:
                objArr[1] = "getAnyType";
                break;
            case 51:
                objArr[1] = "getNullableAnyType";
                break;
            case 52:
                objArr[1] = "getDefaultBound";
                break;
            case 54:
                objArr[1] = "getPrimitiveKotlinType";
                break;
            case 55:
                objArr[1] = "getNumberType";
                break;
            case 56:
                objArr[1] = "getByteType";
                break;
            case 57:
                objArr[1] = "getShortType";
                break;
            case 58:
                objArr[1] = "getIntType";
                break;
            case 59:
                objArr[1] = "getLongType";
                break;
            case 60:
                objArr[1] = "getFloatType";
                break;
            case 61:
                objArr[1] = "getDoubleType";
                break;
            case 62:
                objArr[1] = "getCharType";
                break;
            case 63:
                objArr[1] = "getBooleanType";
                break;
            case 64:
                objArr[1] = "getUnitType";
                break;
            case 65:
                objArr[1] = "getStringType";
                break;
            case 66:
                objArr[1] = "getIterableType";
                break;
            case 68:
            case 69:
            case 70:
                objArr[1] = "getArrayElementType";
                break;
            case 74:
                objArr[1] = "getPrimitiveArrayKotlinType";
                break;
            case 81:
            case 84:
                objArr[1] = "getArrayType";
                break;
            case 86:
                objArr[1] = "getEnumType";
                break;
            case 87:
                objArr[1] = "getAnnotationType";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
                objArr[2] = "setPostponedBuiltinsModuleComputation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                break;
            case 9:
                objArr[2] = "isBuiltIn";
                break;
            case 10:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 12:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case 14:
                objArr[2] = "getBuiltInClassByName";
                break;
            case 16:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case 17:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case 46:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case 53:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case 67:
                objArr[2] = "getArrayElementType";
                break;
            case 71:
            case 72:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 73:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case 75:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 76:
            case 93:
                objArr[2] = "getPrimitiveType";
                break;
            case 77:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
                objArr[2] = "getArrayType";
                break;
            case 85:
                objArr[2] = "getEnumType";
                break;
            case 88:
                objArr[2] = "isArray";
                break;
            case 89:
            case 90:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 91:
                objArr[2] = "isPrimitiveArray";
                break;
            case 92:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 94:
                objArr[2] = "isPrimitiveType";
                break;
            case 95:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 96:
                objArr[2] = "isPrimitiveClass";
                break;
            case 97:
            case 98:
            case 99:
            case 100:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 101:
            case 102:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 103:
            case 104:
                objArr[2] = "classFqNameEquals";
                break;
            case 105:
            case 106:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 107:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 108:
            case 109:
                objArr[2] = "isAny";
                break;
            case 110:
            case 112:
                objArr[2] = "isBoolean";
                break;
            case 111:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 113:
                objArr[2] = "isNumber";
                break;
            case 114:
                objArr[2] = "isChar";
                break;
            case 115:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 116:
                objArr[2] = "isInt";
                break;
            case 117:
                objArr[2] = "isByte";
                break;
            case 118:
                objArr[2] = "isLong";
                break;
            case 119:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 120:
                objArr[2] = "isShort";
                break;
            case 121:
                objArr[2] = "isFloat";
                break;
            case 122:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 123:
                objArr[2] = "isDouble";
                break;
            case 124:
                objArr[2] = "isUByte";
                break;
            case 125:
                objArr[2] = "isUShort";
                break;
            case 126:
                objArr[2] = "isUInt";
                break;
            case 127:
                objArr[2] = "isULong";
                break;
            case 128:
                objArr[2] = "isUByteArray";
                break;
            case 129:
                objArr[2] = "isUShortArray";
                break;
            case 130:
                objArr[2] = "isUIntArray";
                break;
            case Imgproc.COLOR_RGB2YUV_YV12 /* 131 */:
                objArr[2] = "isULongArray";
                break;
            case 132:
                objArr[2] = "isUnsignedArrayType";
                break;
            case 133:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case 134:
            case 135:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case 136:
                objArr[2] = "isNothing";
                break;
            case 137:
                objArr[2] = "isNullableNothing";
                break;
            case 138:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 139:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 140:
                objArr[2] = "isNullableAny";
                break;
            case 141:
                objArr[2] = "isDefaultBound";
                break;
            case 142:
                objArr[2] = "isUnit";
                break;
            case Imgproc.COLOR_COLORCVT_MAX /* 143 */:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 144:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case l.Receive_GEAR_DATA2 /* 145 */:
                objArr[2] = "isMemberOfAny";
                break;
            case l.Receive_GEAR_DATA /* 146 */:
            case 147:
                objArr[2] = "isEnum";
                break;
            case Opcodes.LCMP /* 148 */:
            case Opcodes.FCMPL /* 149 */:
                objArr[2] = "isComparable";
                break;
            case 150:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case 151:
                objArr[2] = "isListOrNullableList";
                break;
            case 152:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 153:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 154:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED /* 156 */:
                objArr[2] = "isThrowable";
                break;
            case 157:
                objArr[2] = "isKClass";
                break;
            case Opcodes.IFLE /* 158 */:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case Opcodes.IF_ICMPEQ /* 159 */:
                objArr[2] = "isCloneable";
                break;
            case 160:
                objArr[2] = "isDeprecated";
                break;
            case 161:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                throw new IllegalStateException(str2);
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static boolean a0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar != null) {
            return e(dVar, h.a.b);
        }
        a(108);
        throw null;
    }

    public static boolean b0(a0 a0Var) {
        if (a0Var != null) {
            return f0(a0Var, h.a.b);
        }
        a(139);
        throw null;
    }

    public static boolean c0(a0 a0Var) {
        if (a0Var != null) {
            return f0(a0Var, h.a.f14810h);
        }
        a(88);
        throw null;
    }

    public static boolean d0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar != null) {
            return e(dVar, h.a.f14810h) || P(dVar) != null;
        }
        a(89);
        throw null;
    }

    private static boolean e(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, kotlin.reflect.jvm.internal.impl.name.d dVar) {
        if (fVar == null) {
            a(103);
            throw null;
        }
        if (dVar != null) {
            return fVar.getName().equals(dVar.i()) && dVar.equals(kotlin.reflect.jvm.internal.impl.resolve.c.m(fVar));
        }
        a(104);
        throw null;
    }

    public static boolean e0(k kVar) {
        if (kVar != null) {
            return kotlin.reflect.jvm.internal.impl.resolve.c.r(kVar, kotlin.reflect.jvm.internal.impl.builtins.a.class, false) != null;
        }
        a(9);
        throw null;
    }

    private static boolean f0(a0 a0Var, kotlin.reflect.jvm.internal.impl.name.d dVar) {
        if (a0Var == null) {
            a(97);
            throw null;
        }
        if (dVar != null) {
            return u0(a0Var.I0(), dVar);
        }
        a(98);
        throw null;
    }

    private static boolean g0(a0 a0Var, kotlin.reflect.jvm.internal.impl.name.d dVar) {
        if (a0Var == null) {
            a(134);
            throw null;
        }
        if (dVar != null) {
            return f0(a0Var, dVar) && !a0Var.J0();
        }
        a(135);
        throw null;
    }

    public static boolean h0(a0 a0Var) {
        if (a0Var != null) {
            return n0(a0Var);
        }
        a(141);
        throw null;
    }

    public static boolean i0(k kVar) {
        if (kVar == null) {
            a(160);
            throw null;
        }
        if (kVar.a().getAnnotations().h(h.a.n)) {
            return true;
        }
        if (!(kVar instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) kVar;
        boolean zM = j0Var.M();
        k0 getter = j0Var.getGetter();
        l0 setter = j0Var.getSetter();
        if (getter != null && i0(getter)) {
            if (!zM) {
                return true;
            }
            if (setter != null && i0(setter)) {
                return true;
            }
        }
        return false;
    }

    public static boolean j0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar != null) {
            return e(dVar, h.a.Q);
        }
        a(157);
        throw null;
    }

    private static boolean k0(a0 a0Var, kotlin.reflect.jvm.internal.impl.name.d dVar) {
        if (a0Var == null) {
            a(105);
            throw null;
        }
        if (dVar != null) {
            return !a0Var.J0() && f0(a0Var, dVar);
        }
        a(106);
        throw null;
    }

    public static boolean l0(a0 a0Var) {
        if (a0Var != null) {
            return m0(a0Var) && !y0.m(a0Var);
        }
        a(136);
        throw null;
    }

    public static boolean m0(a0 a0Var) {
        if (a0Var != null) {
            return f0(a0Var, h.a.c);
        }
        a(138);
        throw null;
    }

    public static boolean n0(a0 a0Var) {
        if (a0Var != null) {
            return b0(a0Var) && a0Var.J0();
        }
        a(140);
        throw null;
    }

    public static boolean o0(a0 a0Var) {
        if (a0Var != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().c();
            return (fVarC == null || P(fVarC) == null) ? false : true;
        }
        a(91);
        throw null;
    }

    private kotlin.reflect.jvm.internal.impl.descriptors.d p(String str) {
        if (str == null) {
            a(14);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarInvoke = this.f14792d.invoke(kotlin.reflect.jvm.internal.impl.name.f.g(str));
        if (dVarInvoke != null) {
            return dVarInvoke;
        }
        a(15);
        throw null;
    }

    public static boolean p0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar != null) {
            return S(dVar) != null;
        }
        a(96);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public kotlin.reflect.jvm.internal.impl.types.f0 q(String str) {
        if (str == null) {
            a(46);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = p(str).n();
        if (f0VarN != null) {
            return f0VarN;
        }
        a(47);
        throw null;
    }

    public static boolean q0(a0 a0Var) {
        if (a0Var != null) {
            return !a0Var.J0() && r0(a0Var);
        }
        a(94);
        throw null;
    }

    public static boolean r0(a0 a0Var) {
        if (a0Var != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().c();
            return (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && p0((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
        }
        a(95);
        throw null;
    }

    public static boolean s0(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar != null) {
            return e(dVar, h.a.b) || e(dVar, h.a.c);
        }
        a(107);
        throw null;
    }

    public static boolean t0(a0 a0Var) {
        return a0Var != null && k0(a0Var, h.a.f14809g);
    }

    public static boolean u0(q0 q0Var, kotlin.reflect.jvm.internal.impl.name.d dVar) {
        if (q0Var == null) {
            a(101);
            throw null;
        }
        if (dVar != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = q0Var.c();
            return (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && e(fVarC, dVar);
        }
        a(102);
        throw null;
    }

    public static boolean v0(a0 a0Var) {
        if (a0Var != null) {
            return g0(a0Var, h.a.b0.j());
        }
        a(128);
        throw null;
    }

    public static boolean w0(a0 a0Var) {
        if (a0Var != null) {
            return g0(a0Var, h.a.d0.j());
        }
        a(130);
        throw null;
    }

    public static boolean x0(a0 a0Var) {
        if (a0Var != null) {
            return g0(a0Var, h.a.e0.j());
        }
        a(Imgproc.COLOR_RGB2YUV_YV12);
        throw null;
    }

    public static boolean y0(a0 a0Var) {
        if (a0Var != null) {
            return g0(a0Var, h.a.c0.j());
        }
        a(129);
        throw null;
    }

    public static boolean z0(k kVar) {
        if (kVar == null) {
            a(10);
            throw null;
        }
        while (kVar != null) {
            if (kVar instanceof b0) {
                return ((b0) kVar).e().i(h.k);
            }
            kVar = kVar.b();
        }
        return false;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 B() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.FLOAT);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(60);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d C(int i) {
        return p(h.b(i));
    }

    public void C0(ModuleDescriptorImpl moduleDescriptorImpl) {
        if (moduleDescriptorImpl != null) {
            this.f14793e.d(new d(moduleDescriptorImpl));
        } else {
            a(1);
            throw null;
        }
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 D() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.INT);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(58);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d E() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = o(h.a.Q.l());
        if (dVarO != null) {
            return dVarO;
        }
        a(21);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 F() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.LONG);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(59);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d G() {
        return p("Nothing");
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 H() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = G().n();
        if (f0VarN != null) {
            return f0VarN;
        }
        a(48);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 I() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarP0 = i().M0(true);
        if (f0VarP0 != null) {
            return f0VarP0;
        }
        a(51);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 J() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarP0 = H().M0(true);
        if (f0VarP0 != null) {
            return f0VarP0;
        }
        a(49);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d K() {
        return p("Number");
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 L() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = K().n();
        if (f0VarN != null) {
            return f0VarN;
        }
        a(55);
        throw null;
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.a1.c M() {
        kotlin.reflect.jvm.internal.impl.descriptors.a1.c.b bVar = kotlin.reflect.jvm.internal.impl.descriptors.a1.c.b.f14862a;
        if (bVar != null) {
            return bVar;
        }
        a(4);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 O(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(73);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.types.f0 f0Var = this.c.invoke().f14798a.get(primitiveType);
        if (f0Var != null) {
            return f0Var;
        }
        a(74);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 R(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(53);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = Q(primitiveType).n();
        if (f0VarN != null) {
            return f0VarN;
        }
        a(54);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 T() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.SHORT);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(57);
        throw null;
    }

    protected m U() {
        m mVar = this.f14793e;
        if (mVar != null) {
            return mVar;
        }
        a(6);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d V() {
        return p("String");
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 W() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = V().n();
        if (f0VarN != null) {
            return f0VarN;
        }
        a(65);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d X(int i) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = o(h.f14800d.c(kotlin.reflect.jvm.internal.impl.name.f.g(h.d(i))));
        if (dVarO != null) {
            return dVarO;
        }
        a(18);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d Y() {
        return p("Unit");
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 Z() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = Y().n();
        if (f0VarN != null) {
            return f0VarN;
        }
        a(64);
        throw null;
    }

    protected void f(boolean z) {
        ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(f14790f, this.f14793e, this, null);
        this.f14791a = moduleDescriptorImpl;
        moduleDescriptorImpl.O0(BuiltInsLoader.f14773a.a().a(this.f14793e, this.f14791a, v(), M(), g(), z));
        ModuleDescriptorImpl moduleDescriptorImpl2 = this.f14791a;
        moduleDescriptorImpl2.U0(moduleDescriptorImpl2);
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.a1.a g() {
        kotlin.reflect.jvm.internal.impl.descriptors.a1.a.C0322a c0322a = kotlin.reflect.jvm.internal.impl.descriptors.a1.a.C0322a.f14860a;
        if (c0322a != null) {
            return c0322a;
        }
        a(3);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d h() {
        return p("Any");
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 i() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarN = h().n();
        if (f0VarN != null) {
            return f0VarN;
        }
        a(50);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d j() {
        return p("Array");
    }

    public a0 k(a0 a0Var) {
        a0 a0VarA;
        if (a0Var == null) {
            a(67);
            throw null;
        }
        if (c0(a0Var)) {
            if (a0Var.H0().size() != 1) {
                throw new IllegalStateException();
            }
            a0 type = a0Var.H0().get(0).getType();
            if (type != null) {
                return type;
            }
            a(68);
            throw null;
        }
        a0 a0VarO = y0.o(a0Var);
        kotlin.reflect.jvm.internal.impl.types.f0 f0Var = this.c.invoke().c.get(a0VarO);
        if (f0Var != null) {
            if (f0Var != null) {
                return f0Var;
            }
            a(69);
            throw null;
        }
        z zVarI = kotlin.reflect.jvm.internal.impl.resolve.c.i(a0VarO);
        if (zVarI == null || (a0VarA = A(a0VarO, zVarI)) == null) {
            throw new IllegalStateException("not array: " + a0Var);
        }
        if (a0VarA != null) {
            return a0VarA;
        }
        a(70);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 l(Variance variance, a0 a0Var) {
        if (variance == null) {
            a(82);
            throw null;
        }
        if (a0Var == null) {
            a(83);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarM = m(variance, a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b());
        if (f0VarM != null) {
            return f0VarM;
        }
        a(84);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 m(Variance variance, a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        if (variance == null) {
            a(78);
            throw null;
        }
        if (a0Var == null) {
            a(79);
            throw null;
        }
        if (eVar == null) {
            a(80);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarG = KotlinTypeFactory.g(eVar, j(), Collections.singletonList(new u0(variance, a0Var)));
        if (f0VarG != null) {
            return f0VarG;
        }
        a(81);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 n() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.BOOLEAN);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(63);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d o(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        if (cVar == null) {
            a(12);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarC = q.c(r(), cVar, NoLookupLocation.FROM_BUILTINS);
        if (dVarC != null) {
            return dVarC;
        }
        a(13);
        throw null;
    }

    public ModuleDescriptorImpl r() {
        if (this.f14791a == null) {
            this.f14791a = this.b.invoke();
        }
        ModuleDescriptorImpl moduleDescriptorImpl = this.f14791a;
        if (moduleDescriptorImpl != null) {
            return moduleDescriptorImpl;
        }
        a(7);
        throw null;
    }

    public MemberScope s() {
        MemberScope memberScopeM = r().j0(h.l).m();
        if (memberScopeM != null) {
            return memberScopeM;
        }
        a(11);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 t() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.BYTE);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(56);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 u() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.CHAR);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(62);
        throw null;
    }

    protected Iterable<kotlin.reflect.jvm.internal.impl.descriptors.a1.b> v() {
        List listSingletonList = Collections.singletonList(new kotlin.reflect.jvm.internal.impl.builtins.functions.a(this.f14793e, r()));
        if (listSingletonList != null) {
            return listSingletonList;
        }
        a(5);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d w() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = o(h.a.C);
        if (dVarO != null) {
            return dVarO;
        }
        a(34);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d x() {
        return p("Comparable");
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 y() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarI = I();
        if (f0VarI != null) {
            return f0VarI;
        }
        a(52);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.f0 z() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarR = R(PrimitiveType.DOUBLE);
        if (f0VarR != null) {
            return f0VarR;
        }
        a(61);
        throw null;
    }
}
