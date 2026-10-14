.class public final Lkotlin/reflect/jvm/internal/impl/util/i$d;
.super Lkotlin/reflect/jvm/internal/impl/util/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/i$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/i$d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/i$d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/i$d;->b:Lkotlin/reflect/jvm/internal/impl/util/i$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "must have a single value parameter"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/i;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/o;)V

    return-void
.end method


# virtual methods
.method public c(Lkotlin/reflect/jvm/internal/impl/descriptors/u;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
