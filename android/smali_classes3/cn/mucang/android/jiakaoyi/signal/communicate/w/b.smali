.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/b;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->t(Lcn/mucang/android/jiakaoyi/signal/communicate/ComStateListener$State;Ljava/lang/Throwable;)V

    return-void
.end method
