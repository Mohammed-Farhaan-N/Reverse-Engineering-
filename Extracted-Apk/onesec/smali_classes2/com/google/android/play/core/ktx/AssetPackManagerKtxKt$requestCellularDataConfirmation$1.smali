.class final Lcom/google/android/play/core/ktx/AssetPackManagerKtxKt$requestCellularDataConfirmation$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AssetPackManagerKtx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/core/ktx/AssetPackManagerKtxKt;->requestCellularDataConfirmation(Lcom/google/android/play/core/assetpacks/AssetPackManager;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0007\u001a\u0004\u0018\u00010\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0086@"
    }
    d2 = {
        "Lcom/google/android/play/core/assetpacks/AssetPackManager;",
        "Landroid/app/Activity;",
        "activity",
        "Lkotlin/coroutines/Continuation;",
        "",
        "continuation",
        "",
        "requestCellularDataConfirmation"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.play.core.ktx.AssetPackManagerKtxKt"
    f = "AssetPackManagerKtx.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x61
    }
    m = "requestCellularDataConfirmation"
    n = {
        "$this$requestCellularDataConfirmation",
        "activity"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/play/core/ktx/AssetPackManagerKtxKt$requestCellularDataConfirmation$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/ktx/AssetPackManagerKtxKt$requestCellularDataConfirmation$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/play/core/ktx/AssetPackManagerKtxKt$requestCellularDataConfirmation$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lcom/google/android/play/core/ktx/AssetPackManagerKtxKt;->requestCellularDataConfirmation(Lcom/google/android/play/core/assetpacks/AssetPackManager;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
