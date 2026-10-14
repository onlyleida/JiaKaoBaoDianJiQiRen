.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->b:I

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->c:I

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->d:I

    iput p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->e:I

    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->b:I

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->c:I

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->d:I

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->e:I

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/l;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->j0(IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V

    return-void
.end method
