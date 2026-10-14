.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/select/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/select/c;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->p(Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;Ljava/util/List;)V

    return-void
.end method
