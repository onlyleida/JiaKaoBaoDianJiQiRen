.class final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;->G(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "gpsBaseId",
        "",
        "gpsBaseName",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/d;

.field final synthetic $item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;->$activity:Landroidx/appcompat/app/d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;->invoke(JLjava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(JLjava/lang/String;)V
    .locals 9

    const-string v0, "gpsBaseName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->q:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$a;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;->$activity:Landroidx/appcompat/app/d;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder$onBindViewHolder$4$1$1$1$1;->$item:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-wide v6, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;JLjava/lang/String;)V

    return-void
.end method
