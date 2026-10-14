.class public final Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;

    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/e$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;

    return-object v0
.end method
