.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->n(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;)V

    return-void
.end method
