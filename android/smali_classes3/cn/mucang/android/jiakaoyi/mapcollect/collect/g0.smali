.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/g0;->c:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->g(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Landroid/content/DialogInterface;I)V

    return-void
.end method
