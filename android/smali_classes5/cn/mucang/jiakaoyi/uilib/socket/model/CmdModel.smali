.class public Lcn/mucang/jiakaoyi/uilib/socket/model/CmdModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public final cmd:Ljava/lang/String;

.field public final cmdType:B

.field public final id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;BI)V
    .locals 1

    const/16 v0, 0x29

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/CmdModel;->cmd:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/CmdModel;->id:I

    .line 4
    iput-byte p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/CmdModel;->cmdType:B

    return-void
.end method
