.class public final synthetic Lcn/mucang/jiakaoyi/uilib/socket/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/k;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/k;->b:Ljava/lang/String;

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/k;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/k;->a:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/k;->b:Ljava/lang/String;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/k;->c:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->v(Ljava/lang/String;I)V

    return-void
.end method
