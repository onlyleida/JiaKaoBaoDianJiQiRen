.class public Lcn/mucang/android/core/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcn/mucang/android/core/utils/i;


# instance fields
.field private final a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/utils/i;

    invoke-direct {v0}, Lcn/mucang/android/core/utils/i;-><init>()V

    sput-object v0, Lcn/mucang/android/core/utils/i;->b:Lcn/mucang/android/core/utils/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/core/utils/i;->a:Landroid/util/LongSparseArray;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/utils/i;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/utils/i;->b(J)V

    return-void
.end method

.method private b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/utils/i;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    return-void
.end method

.method public static c()Lcn/mucang/android/core/utils/i;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/i;->b:Lcn/mucang/android/core/utils/i;

    return-object v0
.end method


# virtual methods
.method public d(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/utils/i;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/utils/i;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/utils/i;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f(Ljava/lang/Object;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/utils/i;->a:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-wide v2
.end method
