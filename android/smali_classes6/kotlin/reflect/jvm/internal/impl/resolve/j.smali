.class public final Lkotlin/reflect/jvm/internal/impl/resolve/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const-string v1, "ResolutionAnchorProvider"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/j;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/z;)Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/j;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->C0(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/i;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/i;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/z;)Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p0

    :goto_0
    return-object p0
.end method
