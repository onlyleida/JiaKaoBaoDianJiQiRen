.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0008\"\u0004\u0008!\u0010\n\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;",
        "Ljava/io/Serializable;",
        "code",
        "",
        "subCode",
        "(II)V",
        "()V",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "data",
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;",
        "getData",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;",
        "setData",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "notTrained",
        "",
        "getNotTrained",
        "()Z",
        "setNotTrained",
        "(Z)V",
        "pass",
        "getPass",
        "setPass",
        "getSubCode",
        "setSubCode",
        "updateData",
        "",
        "duration",
        "",
        "record",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
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
.field private code:I

.field private data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

.field private name:Ljava/lang/String;

.field private transient notTrained:Z

.field private pass:Z

.field private subCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->code:I

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->subCode:I

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->notTrained:Z

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->code:I

    return v0
.end method

.method public final getData()Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotTrained()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->notTrained:Z

    return v0
.end method

.method public final getPass()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->pass:Z

    return v0
.end method

.method public final getSubCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->subCode:I

    return v0
.end method

.method public final setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->code:I

    return-void
.end method

.method public final setData(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNotTrained(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->notTrained:Z

    return-void
.end method

.method public final setPass(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->pass:Z

    return-void
.end method

.method public final setSubCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->subCode:I

    return-void
.end method

.method public final updateData(FLcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getCostTime()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setCostTime(F)V

    if-nez p2, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassCount()I

    move-result v0

    iget v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->pn:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setTrainPassCount(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setTrainPassList(Ljava/util/List;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-byte p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->pass:B

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_3

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->data:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->getTrainPassList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserItemData;->setTrainPassList(Ljava/util/List;)V

    :cond_3
    return-void
.end method
