.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;
.super Lcn/mucang/android/jiakaoyi/teachingk2/level/t/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016J\u0016\u0010\r\u001a\u00020\u00032\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000fH\u0002J\u001e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/PassRateConditionHandler;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;",
        "number",
        "",
        "minRate",
        "maxRate",
        "(III)V",
        "getPassDesc",
        "",
        "data",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
        "list",
        "Landroid/util/SparseArray;",
        "getRate",
        "passList",
        "",
        "getTrainDesc",
        "isPass",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/b;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->a:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->b:I

    return-void
.end method

.method private final d(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2
    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->a:I

    if-ge v1, v4, :cond_0

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    mul-int/lit8 v0, v0, 0x64

    .line 4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->a:I

    div-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object p1

    :goto_0
    const-string p2, "getString(R.string.teachbase_recent_train_count)"

    const-string v0, "java.lang.String.format(format, *args)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    sget-object p1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_recent_train_count:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string v3, "0"

    aput-object v3, p2, v1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->a:I

    if-ge v3, v4, :cond_2

    .line 3
    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_recent_train_count:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->d(Ljava/util/List;)I

    move-result p1

    .line 5
    sget-object p2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_recent_train_pass_rate:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "getString(R.string.teach\u2026e_recent_train_pass_rate)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return p2

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->a:I

    if-ge v0, v1, :cond_2

    return p2

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->d(Ljava/util/List;)I

    move-result p1

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/f;->b:I

    if-lt p1, v0, :cond_3

    const/4 p2, 0x1

    :cond_3
    return p2
.end method
