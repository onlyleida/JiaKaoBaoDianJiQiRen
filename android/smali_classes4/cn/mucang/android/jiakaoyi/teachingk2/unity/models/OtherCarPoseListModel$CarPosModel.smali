.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel$CarPosModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarPosModel"
.end annotation


# instance fields
.field public carNum:Ljava/lang/String;

.field public deviceNum:Ljava/lang/String;

.field public pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public state:I

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel$CarPosModel;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel$CarPosModel;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel$CarPosModel;->deviceNum:Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel$CarPosModel;->deviceNum:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OtherCarPoseListModel$CarPosModel;->deviceNum:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
