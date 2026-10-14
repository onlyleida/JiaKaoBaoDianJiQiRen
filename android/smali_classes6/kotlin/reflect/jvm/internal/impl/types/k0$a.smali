.class public final Lkotlin/reflect/jvm/internal/impl/types/k0$a;
.super Lkotlin/reflect/jvm/internal/impl/types/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/k0;->a(Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/types/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/k0$a;->c:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lkotlin/reflect/jvm/internal/impl/types/q0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/k0$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/y0;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
