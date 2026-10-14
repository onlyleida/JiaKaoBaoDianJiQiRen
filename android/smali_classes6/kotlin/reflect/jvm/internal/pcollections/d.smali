.class final Lkotlin/reflect/jvm/internal/pcollections/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Lkotlin/reflect/jvm/internal/pcollections/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/pcollections/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/c<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/d;

    sget-object v1, Lkotlin/reflect/jvm/internal/pcollections/c;->f:Lkotlin/reflect/jvm/internal/pcollections/c;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/pcollections/d;-><init>(Lkotlin/reflect/jvm/internal/pcollections/c;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/pcollections/d;->b:Lkotlin/reflect/jvm/internal/pcollections/d;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/pcollections/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/pcollections/c<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/pcollections/d;->a:Lkotlin/reflect/jvm/internal/pcollections/c;

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/pcollections/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/pcollections/d<",
            "TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/pcollections/d;->b:Lkotlin/reflect/jvm/internal/pcollections/d;

    return-object v0
.end method

.method private d(Lkotlin/reflect/jvm/internal/pcollections/c;)Lkotlin/reflect/jvm/internal/pcollections/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/pcollections/c<",
            "TV;>;)",
            "Lkotlin/reflect/jvm/internal/pcollections/d<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/d;->a:Lkotlin/reflect/jvm/internal/pcollections/c;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/pcollections/d;-><init>(Lkotlin/reflect/jvm/internal/pcollections/c;)V

    return-object v0
.end method


# virtual methods
.method public b(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/d;->a:Lkotlin/reflect/jvm/internal/pcollections/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/pcollections/c;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)",
            "Lkotlin/reflect/jvm/internal/pcollections/d<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/d;->a:Lkotlin/reflect/jvm/internal/pcollections/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lkotlin/reflect/jvm/internal/pcollections/c;->b(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/pcollections/d;->d(Lkotlin/reflect/jvm/internal/pcollections/c;)Lkotlin/reflect/jvm/internal/pcollections/d;

    move-result-object p1

    return-object p1
.end method
