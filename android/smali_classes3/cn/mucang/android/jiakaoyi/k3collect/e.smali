.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->P0(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method
