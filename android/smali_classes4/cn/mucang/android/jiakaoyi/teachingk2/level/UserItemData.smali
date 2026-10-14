.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;",
        "Ljava/io/Serializable;",
        "()V",
        "costTime",
        "",
        "getCostTime",
        "()F",
        "setCostTime",
        "(F)V",
        "coursePassCount",
        "",
        "getCoursePassCount",
        "()I",
        "setCoursePassCount",
        "(I)V",
        "courseTotalCount",
        "getCourseTotalCount",
        "setCourseTotalCount",
        "extraData",
        "",
        "getExtraData",
        "()Ljava/lang/String;",
        "setExtraData",
        "(Ljava/lang/String;)V",
        "trainPassCount",
        "getTrainPassCount",
        "setTrainPassCount",
        "trainPassList",
        "",
        "getTrainPassList",
        "()Ljava/util/List;",
        "setTrainPassList",
        "(Ljava/util/List;)V",
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
.field private costTime:F

.field private coursePassCount:I

.field private courseTotalCount:I

.field private extraData:Ljava/lang/String;

.field private trainPassCount:I

.field private trainPassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCostTime()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->costTime:F

    return v0
.end method

.method public final getCoursePassCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->coursePassCount:I

    return v0
.end method

.method public final getCourseTotalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->courseTotalCount:I

    return v0
.end method

.method public final getExtraData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrainPassCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->trainPassCount:I

    return v0
.end method

.method public final getTrainPassList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->trainPassList:Ljava/util/List;

    return-object v0
.end method

.method public final setCostTime(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->costTime:F

    return-void
.end method

.method public final setCoursePassCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->coursePassCount:I

    return-void
.end method

.method public final setCourseTotalCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->courseTotalCount:I

    return-void
.end method

.method public final setExtraData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->extraData:Ljava/lang/String;

    return-void
.end method

.method public final setTrainPassCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->trainPassCount:I

    return-void
.end method

.method public final setTrainPassList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->trainPassList:Ljava/util/List;

    return-void
.end method
