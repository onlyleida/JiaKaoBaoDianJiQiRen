.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/base/dialog/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/o;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/o;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->j(Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;Landroid/content/DialogInterface;)V

    return-void
.end method
