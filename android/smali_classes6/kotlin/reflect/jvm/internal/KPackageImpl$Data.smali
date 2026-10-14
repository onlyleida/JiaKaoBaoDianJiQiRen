.class final Lkotlin/reflect/jvm/internal/KPackageImpl$Data;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KPackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Data"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R%\u0010\n\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\r\u0010\u000eR/\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R!\u0010\u0019\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\t\u001a\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "(Lkotlin/reflect/jvm/internal/KPackageImpl;)V",
        "kotlinClass",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;",
        "getKotlinClass",
        "()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;",
        "kotlinClass$delegate",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "members",
        "",
        "Lkotlin/reflect/jvm/internal/KCallableImpl;",
        "getMembers",
        "()Ljava/util/Collection;",
        "members$delegate",
        "metadata",
        "Lkotlin/Triple;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;",
        "getMetadata",
        "()Lkotlin/Triple;",
        "metadata$delegate",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;",
        "multifileFacade",
        "Ljava/lang/Class;",
        "getMultifileFacade",
        "()Ljava/lang/Class;",
        "multifileFacade$delegate",
        "scope",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        "getScope",
        "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;",
        "scope$delegate",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field static final synthetic i:[Lkotlin/reflect/l;


# instance fields
.field private final d:Lkotlin/reflect/jvm/internal/k$a;

.field private final e:Lkotlin/reflect/jvm/internal/k$a;

.field private final f:Lkotlin/reflect/jvm/internal/k$b;

.field private final g:Lkotlin/reflect/jvm/internal/k$b;

.field final synthetic h:Lkotlin/reflect/jvm/internal/KPackageImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    const/4 v1, 0x5

    new-array v1, v1, [Lkotlin/reflect/l;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->i(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/n;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->i(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/n;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "multifileFacade"

    const-string v5, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->i(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/n;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v3

    const-string v4, "metadata"

    const-string v5, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->i(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/n;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v0

    const-string v3, "members"

    const-string v4, "getMembers()Ljava/util/Collection;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/v;->i(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/n;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->i:[Lkotlin/reflect/l;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->h:Lkotlin/reflect/jvm/internal/KPackageImpl;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V

    .line 2
    new-instance p1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$kotlinClass$2;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$kotlinClass$2;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/k;->d(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->d:Lkotlin/reflect/jvm/internal/k$a;

    .line 3
    new-instance p1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$scope$2;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$scope$2;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/k;->d(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->e:Lkotlin/reflect/jvm/internal/k$a;

    .line 4
    new-instance p1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$multifileFacade$2;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$multifileFacade$2;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/k;->b(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->f:Lkotlin/reflect/jvm/internal/k$b;

    .line 5
    new-instance p1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$metadata$2;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$metadata$2;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/k;->b(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->g:Lkotlin/reflect/jvm/internal/k$b;

    .line 6
    new-instance p1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/k;->d(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$a;

    return-void
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f;

    move-result-object p0

    return-object p0
.end method

.method private final c()Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->d:Lkotlin/reflect/jvm/internal/k$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->i:[Lkotlin/reflect/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/k$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c1/a/f;

    return-object v0
.end method


# virtual methods
.method public final d()Lkotlin/Triple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/f;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->g:Lkotlin/reflect/jvm/internal/k$b;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->i:[Lkotlin/reflect/l;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/k$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Triple;

    return-object v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->f:Lkotlin/reflect/jvm/internal/k$b;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->i:[Lkotlin/reflect/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/k$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->e:Lkotlin/reflect/jvm/internal/k$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->i:[Lkotlin/reflect/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/k$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object v0
.end method
