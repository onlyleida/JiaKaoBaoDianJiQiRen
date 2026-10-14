.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/ui/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/ui/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;->a:Lcn/mucang/android/account/ui/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;->a:Lcn/mucang/android/account/ui/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
