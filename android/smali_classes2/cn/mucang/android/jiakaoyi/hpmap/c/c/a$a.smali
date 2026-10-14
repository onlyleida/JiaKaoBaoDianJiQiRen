.class Lcn/mucang/android/jiakaoyi/hpmap/c/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->i(Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    return-void
.end method
