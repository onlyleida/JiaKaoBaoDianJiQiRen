.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/k;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;->f(Lcn/mucang/jiakaoyi/uilib/ui/dialog/PasswordDialog;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    return-void
.end method
