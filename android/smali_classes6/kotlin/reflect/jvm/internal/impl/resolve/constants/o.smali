.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;,
        Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;->b:Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/b;I)V
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;-><init>(Lkotlin/reflect/jvm/internal/impl/name/b;I)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/descriptors/z;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->E()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    const-string v2, "module.builtIns.kClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/z;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-direct {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    invoke-static {v2}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lkotlin/reflect/jvm/internal/impl/descriptors/z;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 5

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;

    .line 2
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;->a()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;->c()Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;->a()Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;->b()I

    move-result v0

    .line 5
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/name/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unresolved type: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (arrayDimensions="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/t;->j(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    const-string v0, "createErrorType(\"Unresol\u2026sions=$arrayDimensions)\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->n()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    const-string v2, "descriptor.defaultType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->t(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v3, v4, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->l(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    const-string v3, "module.builtIns.getArray\u2026Variance.INVARIANT, type)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 9
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
