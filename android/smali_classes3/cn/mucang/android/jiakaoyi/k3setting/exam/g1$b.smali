.class Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->v(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->v(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$c;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    :cond_0
    return-void
.end method
