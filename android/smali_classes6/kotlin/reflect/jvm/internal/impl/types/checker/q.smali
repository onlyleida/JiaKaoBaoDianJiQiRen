.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/checker/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/q;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/q;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/q;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/c1;Lkotlin/reflect/jvm/internal/impl/types/c1;)Z
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/d;->a:Lkotlin/reflect/jvm/internal/impl/types/d;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/p;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/p;

    invoke-virtual {v0, v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/d;->b(Lkotlin/reflect/jvm/internal/impl/types/model/m;Lkotlin/reflect/jvm/internal/impl/types/model/g;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result p1

    return p1
.end method
