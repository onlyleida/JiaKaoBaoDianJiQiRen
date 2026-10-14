.class final Lkotlin/reflect/jvm/internal/impl/types/checker/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/a0;

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/checker/r;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/checker/r;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/r;->a:Lkotlin/reflect/jvm/internal/impl/types/a0;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/r;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/r;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/types/checker/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/r;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/r;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/r;->a:Lkotlin/reflect/jvm/internal/impl/types/a0;

    return-object v0
.end method
