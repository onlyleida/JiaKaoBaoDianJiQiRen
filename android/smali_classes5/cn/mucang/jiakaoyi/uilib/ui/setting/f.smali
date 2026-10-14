.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/f;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AboutActivity;->l(Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingAboutActivityBinding;Landroid/view/View;)V

    return-void
.end method
