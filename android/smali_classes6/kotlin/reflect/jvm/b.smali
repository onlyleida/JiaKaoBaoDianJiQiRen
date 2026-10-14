.class public final Lkotlin/reflect/jvm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010%\u001a\u0004\u0018\u00010&*\u00020\'H\u0002\"/\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00038F\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u001b\u0010\u0008\u001a\u0004\u0018\u00010\t*\u0006\u0012\u0002\u0008\u00030\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\u0008\u00030\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\"\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\u0008\u00030\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\"\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\u0008\u00030\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\"\u0015\u0010\u0018\u001a\u00020\u0019*\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\"-\u0010\u001d\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0003\"\u0008\u0008\u0000\u0010\u0002*\u00020\u001e*\u0008\u0012\u0004\u0012\u0002H\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \"\u001b\u0010\u001d\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0003*\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010!\"\u001b\u0010\"\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\n*\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "javaConstructor",
        "Ljava/lang/reflect/Constructor;",
        "T",
        "Lkotlin/reflect/KFunction;",
        "getJavaConstructor$annotations",
        "(Lkotlin/reflect/KFunction;)V",
        "getJavaConstructor",
        "(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;",
        "javaField",
        "Ljava/lang/reflect/Field;",
        "Lkotlin/reflect/KProperty;",
        "getJavaField",
        "(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;",
        "javaGetter",
        "Ljava/lang/reflect/Method;",
        "getJavaGetter",
        "(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;",
        "javaMethod",
        "getJavaMethod",
        "(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;",
        "javaSetter",
        "Lkotlin/reflect/KMutableProperty;",
        "getJavaSetter",
        "(Lkotlin/reflect/KMutableProperty;)Ljava/lang/reflect/Method;",
        "javaType",
        "Ljava/lang/reflect/Type;",
        "Lkotlin/reflect/KType;",
        "getJavaType",
        "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;",
        "kotlinFunction",
        "",
        "getKotlinFunction",
        "(Ljava/lang/reflect/Constructor;)Lkotlin/reflect/KFunction;",
        "(Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;",
        "kotlinProperty",
        "getKotlinProperty",
        "(Ljava/lang/reflect/Field;)Lkotlin/reflect/KProperty;",
        "getKPackage",
        "Lkotlin/reflect/KDeclarationContainer;",
        "Ljava/lang/reflect/Member;",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/reflect/p;)Ljava/lang/reflect/Type;
    .locals 1

    const-string v0, "$this$javaType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/reflect/TypesJVMKt;->f(Lkotlin/reflect/p;)Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method
