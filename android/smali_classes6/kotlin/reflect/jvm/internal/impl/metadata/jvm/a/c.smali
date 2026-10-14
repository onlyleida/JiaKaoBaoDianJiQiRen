.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;->a:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;->c()Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;->b:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    .line 2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;->c()Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    .line 3
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;->b(Lkotlin/reflect/jvm/internal/impl/metadata/c/b$d;)Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/a/c;->b:Lkotlin/reflect/jvm/internal/impl/metadata/c/b$b;

    return-object v0
.end method
