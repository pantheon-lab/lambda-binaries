regions=( 'us-east-1' 'eu-central-1' 'eu-west-1' 'eu-west-2' 'us-east-2' 'us-west-2' 'ap-south-1' 'ap-southeast-1' 'ap-southeast-2' 'ap-northeast-1' )
for region in "${regions[@]}"
do : 
    echo $region
    aws s3 cp --region=$region out/remotion-layer-chromium-v8-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-chromium-v8-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-chromium-v8-x86_64.zip s3://remotionlambda-binaries-$region/remotion-layer-chromium-v8-x86_64.zip

    aws s3 cp --region=$region out/remotion-layer-ffmpeg-v8-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-ffmpeg-v8-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-ffmpeg-v8-x86_64.zip s3://remotionlambda-binaries-$region/remotion-layer-ffmpeg-v8-x86_64.zip
    
    aws s3 cp --region=$region out/remotion-layer-fonts-v8-arm64.zip s3://remotionlambda-binaries-$region/remotion-layer-fonts-v8-arm64.zip
    aws s3 cp --region=$region out/remotion-layer-fonts-v8-x86_64.zip s3://remotionlambda-binaries-$region/remotion-layer-fonts-v8-x86_64.zip
done

