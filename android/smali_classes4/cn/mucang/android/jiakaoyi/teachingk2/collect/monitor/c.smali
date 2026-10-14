.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/appcompat/widget/d0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;Landroidx/appcompat/widget/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->c:Landroid/view/View;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->d:Landroidx/appcompat/widget/d0;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->c:Landroid/view/View;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/c;->d:Landroidx/appcompat/widget/d0;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;->G(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorActivity;Landroid/view/View;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
