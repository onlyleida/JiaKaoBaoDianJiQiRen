.class Lcn/mucang/android/account/k/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/h/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/k/c;->v(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/h/d;

.field final synthetic b:Lcn/mucang/android/account/k/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/k/c;Lcn/mucang/android/account/h/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/c$b;->b:Lcn/mucang/android/account/k/c;

    iput-object p2, p0, Lcn/mucang/android/account/k/c$b;->a:Lcn/mucang/android/account/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/c$b;->b:Lcn/mucang/android/account/k/c;

    iget-object v1, p0, Lcn/mucang/android/account/k/c$b;->a:Lcn/mucang/android/account/h/d;

    invoke-static {v0, v1, p1, p2}, Lcn/mucang/android/account/k/c;->z(Lcn/mucang/android/account/k/c;Lcn/mucang/android/account/h/d;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;)V

    return-void
.end method
