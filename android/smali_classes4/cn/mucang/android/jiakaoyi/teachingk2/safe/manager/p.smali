.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/p;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/p;->b:Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->m(Lcn/mucang/jiakaoyi/uilib/socket/model/OtherCarPosListSocketModel;)V

    return-void
.end method
