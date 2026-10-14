.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e1;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2;->x(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$a;)V

    return-void
.end method
