.class public final synthetic Lcn/mucang/jiakaoyi/uilib/socket/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/i;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    iput-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/i;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/i;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/i;->b:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->p(J)V

    return-void
.end method
