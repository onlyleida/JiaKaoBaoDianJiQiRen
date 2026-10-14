.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/push/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/alivc/live/pusher/AlivcLivePusher;


# direct methods
.method public synthetic constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/e0;->a:Lcom/alivc/live/pusher/AlivcLivePusher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/e0;->a:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b0(Lcom/alivc/live/pusher/AlivcLivePusher;)V

    return-void
.end method
