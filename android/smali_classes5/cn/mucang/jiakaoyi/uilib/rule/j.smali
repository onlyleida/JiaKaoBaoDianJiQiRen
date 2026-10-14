.class public final synthetic Lcn/mucang/jiakaoyi/uilib/rule/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;

.field public final synthetic b:Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/j;->a:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/j;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/j;->a:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/j;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->m(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Ljava/util/List;)V

    return-void
.end method
