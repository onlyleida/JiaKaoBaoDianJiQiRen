.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/com/v/b;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;->b:Lcn/mucang/android/jiakaoyi/signal/com/v/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/a;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/d;->g(Lcn/mucang/android/jiakaoyi/signal/com/v/b;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
