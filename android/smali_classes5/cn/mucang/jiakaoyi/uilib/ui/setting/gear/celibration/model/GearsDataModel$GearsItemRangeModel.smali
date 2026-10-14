.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GearsItemRangeModel"
.end annotation


# instance fields
.field public maxBottom:I

.field public maxLeft:I

.field public maxRight:I

.field public maxTop:I

.field public minBottom:I

.field public minLeft:I

.field public minRight:I

.field public minTop:I


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->right:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxLeft:I

    .line 3
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->left:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minRight:I

    .line 4
    iget v0, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->bottom:I

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxTop:I

    .line 5
    iget p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->top:I

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minBottom:I

    const/16 p1, -0x32

    .line 6
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minLeft:I

    const/16 v0, 0x32

    .line 7
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxRight:I

    .line 8
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->minTop:I

    .line 9
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemRangeModel;->maxBottom:I

    return-void
.end method
