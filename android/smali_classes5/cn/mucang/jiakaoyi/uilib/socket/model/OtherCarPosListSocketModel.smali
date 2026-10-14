.class public Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;
    }
.end annotation


# instance fields
.field public itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel$CarPosModel;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x81

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;->itemList:Ljava/util/List;

    return-void
.end method
