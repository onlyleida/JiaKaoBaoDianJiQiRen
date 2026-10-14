.class public final Lkotlin/reflect/jvm/internal/impl/util/e$a;
.super Lkotlin/reflect/jvm/internal/impl/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/e$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/e$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/e$a;->b:Lkotlin/reflect/jvm/internal/impl/util/e$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "must be a member function"

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

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
