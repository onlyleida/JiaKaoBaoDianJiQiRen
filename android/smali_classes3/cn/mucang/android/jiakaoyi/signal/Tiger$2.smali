.class final Lcn/mucang/android/jiakaoyi/signal/Tiger$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/Tiger;->d(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic b:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/Tiger$2;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/Tiger$2;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-interface {p1}, Landroidx/lifecycle/r;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->c(Landroidx/lifecycle/q;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/Tiger$2;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/Tiger$2;->b:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->b(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
