.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

.field public final synthetic b:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i;->b:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->c0(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
