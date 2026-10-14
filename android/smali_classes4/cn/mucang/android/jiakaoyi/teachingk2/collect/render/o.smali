.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

.field public final synthetic c:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;->c:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/o;->c:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->e0(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/b;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
