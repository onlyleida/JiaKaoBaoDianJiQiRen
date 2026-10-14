.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/nav/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/c/e;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/a;->b:Lcn/mucang/android/jiakaoyi/signal/c/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/nav/a;->b:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
