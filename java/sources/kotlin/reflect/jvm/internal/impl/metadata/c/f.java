package kotlin.reflect.jvm.internal.impl.metadata.c;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    public static final ProtoBuf$Type a(ProtoBuf$Type protoBuf$Type, g typeTable) {
        r.e(protoBuf$Type, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Type.hasAbbreviatedType()) {
            return protoBuf$Type.getAbbreviatedType();
        }
        if (protoBuf$Type.hasAbbreviatedTypeId()) {
            return typeTable.a(protoBuf$Type.getAbbreviatedTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type b(ProtoBuf$TypeAlias protoBuf$TypeAlias, g typeTable) {
        r.e(protoBuf$TypeAlias, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$TypeAlias.hasExpandedType()) {
            ProtoBuf$Type expandedType = protoBuf$TypeAlias.getExpandedType();
            r.d(expandedType, "expandedType");
            return expandedType;
        }
        if (protoBuf$TypeAlias.hasExpandedTypeId()) {
            return typeTable.a(protoBuf$TypeAlias.getExpandedTypeId());
        }
        throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias".toString());
    }

    public static final ProtoBuf$Type c(ProtoBuf$Type protoBuf$Type, g typeTable) {
        r.e(protoBuf$Type, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Type.hasFlexibleUpperBound()) {
            return protoBuf$Type.getFlexibleUpperBound();
        }
        if (protoBuf$Type.hasFlexibleUpperBoundId()) {
            return typeTable.a(protoBuf$Type.getFlexibleUpperBoundId());
        }
        return null;
    }

    public static final boolean d(ProtoBuf$Function protoBuf$Function) {
        r.e(protoBuf$Function, "<this>");
        return protoBuf$Function.hasReceiverType() || protoBuf$Function.hasReceiverTypeId();
    }

    public static final boolean e(ProtoBuf$Property protoBuf$Property) {
        r.e(protoBuf$Property, "<this>");
        return protoBuf$Property.hasReceiverType() || protoBuf$Property.hasReceiverTypeId();
    }

    public static final ProtoBuf$Type f(ProtoBuf$Class protoBuf$Class, g typeTable) {
        r.e(protoBuf$Class, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Class.hasInlineClassUnderlyingType()) {
            return protoBuf$Class.getInlineClassUnderlyingType();
        }
        if (protoBuf$Class.hasInlineClassUnderlyingTypeId()) {
            return typeTable.a(protoBuf$Class.getInlineClassUnderlyingTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type g(ProtoBuf$Type protoBuf$Type, g typeTable) {
        r.e(protoBuf$Type, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Type.hasOuterType()) {
            return protoBuf$Type.getOuterType();
        }
        if (protoBuf$Type.hasOuterTypeId()) {
            return typeTable.a(protoBuf$Type.getOuterTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type h(ProtoBuf$Function protoBuf$Function, g typeTable) {
        r.e(protoBuf$Function, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Function.hasReceiverType()) {
            return protoBuf$Function.getReceiverType();
        }
        if (protoBuf$Function.hasReceiverTypeId()) {
            return typeTable.a(protoBuf$Function.getReceiverTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type i(ProtoBuf$Property protoBuf$Property, g typeTable) {
        r.e(protoBuf$Property, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Property.hasReceiverType()) {
            return protoBuf$Property.getReceiverType();
        }
        if (protoBuf$Property.hasReceiverTypeId()) {
            return typeTable.a(protoBuf$Property.getReceiverTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type j(ProtoBuf$Function protoBuf$Function, g typeTable) {
        r.e(protoBuf$Function, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Function.hasReturnType()) {
            ProtoBuf$Type returnType = protoBuf$Function.getReturnType();
            r.d(returnType, "returnType");
            return returnType;
        }
        if (protoBuf$Function.hasReturnTypeId()) {
            return typeTable.a(protoBuf$Function.getReturnTypeId());
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Function".toString());
    }

    public static final ProtoBuf$Type k(ProtoBuf$Property protoBuf$Property, g typeTable) {
        r.e(protoBuf$Property, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$Property.hasReturnType()) {
            ProtoBuf$Type returnType = protoBuf$Property.getReturnType();
            r.d(returnType, "returnType");
            return returnType;
        }
        if (protoBuf$Property.hasReturnTypeId()) {
            return typeTable.a(protoBuf$Property.getReturnTypeId());
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Property".toString());
    }

    public static final List<ProtoBuf$Type> l(ProtoBuf$Class protoBuf$Class, g typeTable) {
        r.e(protoBuf$Class, "<this>");
        r.e(typeTable, "typeTable");
        List<ProtoBuf$Type> supertypeList = protoBuf$Class.getSupertypeList();
        if (!(!supertypeList.isEmpty())) {
            supertypeList = null;
        }
        if (supertypeList == null) {
            List<Integer> supertypeIdList = protoBuf$Class.getSupertypeIdList();
            r.d(supertypeIdList, "supertypeIdList");
            supertypeList = new ArrayList<>(v.u(supertypeIdList, 10));
            for (Integer it : supertypeIdList) {
                r.d(it, "it");
                supertypeList.add(typeTable.a(it.intValue()));
            }
        }
        return supertypeList;
    }

    public static final ProtoBuf$Type m(ProtoBuf$Type.Argument argument, g typeTable) {
        r.e(argument, "<this>");
        r.e(typeTable, "typeTable");
        if (argument.hasType()) {
            return argument.getType();
        }
        if (argument.hasTypeId()) {
            return typeTable.a(argument.getTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type n(ProtoBuf$ValueParameter protoBuf$ValueParameter, g typeTable) {
        r.e(protoBuf$ValueParameter, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$ValueParameter.hasType()) {
            ProtoBuf$Type type = protoBuf$ValueParameter.getType();
            r.d(type, "type");
            return type;
        }
        if (protoBuf$ValueParameter.hasTypeId()) {
            return typeTable.a(protoBuf$ValueParameter.getTypeId());
        }
        throw new IllegalStateException("No type in ProtoBuf.ValueParameter".toString());
    }

    public static final ProtoBuf$Type o(ProtoBuf$TypeAlias protoBuf$TypeAlias, g typeTable) {
        r.e(protoBuf$TypeAlias, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$TypeAlias.hasUnderlyingType()) {
            ProtoBuf$Type underlyingType = protoBuf$TypeAlias.getUnderlyingType();
            r.d(underlyingType, "underlyingType");
            return underlyingType;
        }
        if (protoBuf$TypeAlias.hasUnderlyingTypeId()) {
            return typeTable.a(protoBuf$TypeAlias.getUnderlyingTypeId());
        }
        throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias".toString());
    }

    public static final List<ProtoBuf$Type> p(ProtoBuf$TypeParameter protoBuf$TypeParameter, g typeTable) {
        r.e(protoBuf$TypeParameter, "<this>");
        r.e(typeTable, "typeTable");
        List<ProtoBuf$Type> upperBoundList = protoBuf$TypeParameter.getUpperBoundList();
        if (!(!upperBoundList.isEmpty())) {
            upperBoundList = null;
        }
        if (upperBoundList == null) {
            List<Integer> upperBoundIdList = protoBuf$TypeParameter.getUpperBoundIdList();
            r.d(upperBoundIdList, "upperBoundIdList");
            upperBoundList = new ArrayList<>(v.u(upperBoundIdList, 10));
            for (Integer it : upperBoundIdList) {
                r.d(it, "it");
                upperBoundList.add(typeTable.a(it.intValue()));
            }
        }
        return upperBoundList;
    }

    public static final ProtoBuf$Type q(ProtoBuf$ValueParameter protoBuf$ValueParameter, g typeTable) {
        r.e(protoBuf$ValueParameter, "<this>");
        r.e(typeTable, "typeTable");
        if (protoBuf$ValueParameter.hasVarargElementType()) {
            return protoBuf$ValueParameter.getVarargElementType();
        }
        if (protoBuf$ValueParameter.hasVarargElementTypeId()) {
            return typeTable.a(protoBuf$ValueParameter.getVarargElementTypeId());
        }
        return null;
    }
}
