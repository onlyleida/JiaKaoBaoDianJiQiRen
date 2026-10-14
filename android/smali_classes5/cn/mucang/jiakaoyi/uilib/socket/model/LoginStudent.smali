.class public Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# instance fields
.field public studentId:Ljava/lang/String;

.field public time:J

.field public timeOver:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const/16 v0, 0x45

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->studentId:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->time:J

    return-void
.end method
