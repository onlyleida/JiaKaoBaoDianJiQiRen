.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/f;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/f;-><init>(Ljava/util/List;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-object v0
.end method
