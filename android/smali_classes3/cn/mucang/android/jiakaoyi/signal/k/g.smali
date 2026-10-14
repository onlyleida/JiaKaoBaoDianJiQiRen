.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/k/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/g;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/g;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/g;->b:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->E(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method
