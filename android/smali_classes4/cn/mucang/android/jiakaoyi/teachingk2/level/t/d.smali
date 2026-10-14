.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/t/d;
.super Lcn/mucang/android/jiakaoyi/teachingk2/level/t/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016J\u001e\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016J\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/FpConditionHandler;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/handler/BaseConditionHandler;",
        "id",
        "",
        "totalCount",
        "passCount",
        "(III)V",
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


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/b;-><init>()V

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/d;->a:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/d;->b:I

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->findByCode(I)Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->setConfigCount(II)V

    return-void
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
    .locals 5
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
    sget-object p2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pass_num_unpass_num:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.teachbase_pass_num_unpass_num)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCoursePassCount()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCourseTotalCount()I

    move-result v4

    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCoursePassCount()I

    move-result v3

    :goto_2
    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCourseTotalCount()I

    move-result p2

    :goto_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/d;->a:I

    if-gt p2, v1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCoursePassCount()I

    move-result p1

    :goto_1
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/t/d;->b:I

    if-lt p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
