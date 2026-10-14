.class public final synthetic Lcn/mucang/jiakaoyi/uilib/rule/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/m;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/m;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->p(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Landroid/view/View;)V

    return-void
.end method
