.class public final Lkotlin/reflect/jvm/internal/impl/util/e$b;
.super Lkotlin/reflect/jvm/internal/impl/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/e$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/e$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/e$b;->b:Lkotlin/reflect/jvm/internal/impl/util/e$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "must be a member or an extension function"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/e;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public c(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->K()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->O()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
