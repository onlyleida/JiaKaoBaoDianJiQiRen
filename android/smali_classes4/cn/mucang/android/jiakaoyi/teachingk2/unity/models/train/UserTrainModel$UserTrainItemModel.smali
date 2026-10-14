.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel$UserTrainItemModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserTrainItemModel"
.end annotation


# instance fields
.field public costTime:I

.field public count:I

.field public examCostTime:I

.field public examCount:I

.field public examPassCount:I

.field public passCount:I

.field public proficiency:I

.field public step:I

.field public stepName:Ljava/lang/String;

.field public subStep:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel$UserTrainItemModel;->passCount:I

    const/16 v1, 0x1e

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel$UserTrainItemModel;->examCount:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel$UserTrainItemModel;->examPassCount:I

    const/16 v0, 0x1bae

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel$UserTrainItemModel;->costTime:I

    const/16 v0, 0xbd9

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel$UserTrainItemModel;->examCostTime:I

    .line 7
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel$UserTrainItemModel;->proficiency:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
