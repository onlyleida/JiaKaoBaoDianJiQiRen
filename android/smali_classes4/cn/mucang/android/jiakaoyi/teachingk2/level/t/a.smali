.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/t/a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/level/t/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/AllPassConditionHandler;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;",
        "()V",
        "getPassDesc",
        "",
        "data",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
        "list",
        "Landroid/util/SparseArray;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Ljava/lang/String;
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

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    if-lt v4, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_1
    sget-object p1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_html3:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.teachbase_html3)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Ljava/lang/String;
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

.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Z
    .locals 5
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

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    if-lt v3, p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method
