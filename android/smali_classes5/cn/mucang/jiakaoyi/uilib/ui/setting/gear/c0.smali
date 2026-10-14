.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->c:Ljava/lang/String;

    iput p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->d:I

    iput p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->e:I

    iput p6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->f:I

    iput p7, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->g:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->c:Ljava/lang/String;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->d:I

    iget v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->e:I

    iget v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->f:I

    iget v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/c0;->g:I

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->l0(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIIILandroid/content/DialogInterface;I)V

    return-void
.end method
