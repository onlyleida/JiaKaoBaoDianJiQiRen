.class public Lcn/mucang/jiakaoyi/uilib/socket/model/DialogMessageModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field private entity:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;)V
    .locals 1

    const/16 v0, 0x70

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/DialogMessageModel;->entity:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    return-void
.end method


# virtual methods
.method public getEntity()Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/DialogMessageModel;->entity:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    return-object v0
.end method
